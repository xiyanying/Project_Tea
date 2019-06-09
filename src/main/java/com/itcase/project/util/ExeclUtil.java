package com.itcase.project.util;

import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.hssf.util.HSSFColor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

@Component
public class ExeclUtil {

    private final Logger logger = LoggerFactory.getLogger(ExeclUtil.class);

    /**
     *
     * @param list 数据大小
     * @param headers  表头
     * @param title  标题
     * @param os  输出流
     * @param <T> 返回类型
     */
    public <T> void exportDataToExcel(List<T> list, String[] headers, String title, OutputStream os){
        HSSFWorkbook workbook = new HSSFWorkbook();
        //生成一个表格
        HSSFSheet sheet = workbook.createSheet(title);
        //设置表格默认列宽15个字节
        sheet.setDefaultColumnWidth(15);
        //生成一个样式
        HSSFCellStyle style = this.getCellStyle(workbook);
        //生成一个字体
        HSSFFont font = this.getFont(workbook);
        //把字体应用到当前样式
        style.setFont(font);

        //生成表格标题
        HSSFRow row = sheet.createRow(0);
        row.setHeight((short)300);
        HSSFCell cell = null;

        for (int i = 0; i < headers.length; i++) {
            cell = row.createCell(i);
            cell.setCellStyle(style);
            HSSFRichTextString text = new HSSFRichTextString(headers[i]);
            cell.setCellValue(text);
        }

        //将数据放入sheet中
        for (int i = 0; i < list.size(); i++) {
            row = sheet.createRow(i+1);
            T t = list.get(i);
            Class<?> aClass = t.getClass();
            Field[] fields = aClass.getDeclaredFields();
            //利用反射，根据JavaBean属性的先后顺序，动态调用get方法得到属性的值
//            Field[] fields = t.getClass().getFields();

//            System.out.println(fields.length);
            try {
                for (int j = 0; j < fields.length; j++) {
                    cell = row.createCell(j);
                    Field field = fields[j];
                    String fieldName = field.getName();
                    // substring(0, 1).toUpperCase()+fieldName.substring(1)
                    String methodName = "get"+fieldName;
                    Method getMethod = t.getClass().getDeclaredMethod(methodName,new Class[]{});
                    Object value = getMethod.invoke(t, new Object[]{});
                    if(null == value)
                        value ="";
                    cell.setCellValue(value.toString());

                }
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
        }

        try {
            workbook.write(os);
        } catch (Exception e) {
            logger.error(e.getMessage());
        }finally{
            try {
                os.flush();
                os.close();
            } catch (IOException e) {
                logger.error(e.getMessage());
            }
        }

    }

    /**
     * @Title: getCellStyle
     * @Description: 获取单元格格式
     * @param @param workbook
     * @param @return
     * @return HSSFCellStyle
     * @throws
     */
    public HSSFCellStyle getCellStyle(HSSFWorkbook workbook){
        HSSFCellStyle style = workbook.createCellStyle();
        style.setFillForegroundColor(HSSFColor.GREY_25_PERCENT.index);
        style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
        style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
        style.setBorderTop(HSSFCellStyle.BORDER_THIN);
        style.setLeftBorderColor(HSSFCellStyle.BORDER_THIN);
        style.setRightBorderColor(HSSFCellStyle.BORDER_THIN);
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);

        return style;
    }

    /**
     * @Title: getFont
     * @Description: 生成字体样式
     * @param @param workbook
     * @param @return
     * @return HSSFFont
     * @throws
     */
    public HSSFFont getFont(HSSFWorkbook workbook){
        HSSFFont font = workbook.createFont();
        font.setColor(HSSFColor.WHITE.index);
        font.setFontHeightInPoints((short)12);
        font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
        return font;
    }

//    public boolean isIE(HttpServletRequest request){
//        return request.getHeader("USER-AGENT").toLowerCase().indexOf("msie")>0?true:false;
//    }



}
