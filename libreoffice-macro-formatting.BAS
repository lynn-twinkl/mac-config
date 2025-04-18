Sub ApplyFormattingAndSaveAsPDF
    Dim oDoc As Object
    Dim oText As Object
    Dim oCursor As Object
    Dim oStyleFamilies As Object
    Dim oPageStyle As Object
    Dim SavePath As String
    Dim FileUrl As String

    ' Get the current document
    oDoc = ThisComponent

    ' Get the text in the document
    oText = oDoc.Text
    oCursor = oText.createTextCursor()

    ' Select the entire document
    oCursor.gotoStart(False)
    oCursor.gotoEnd(True)

    ' Apply font style to the entire document
    oCursor.CharFontName = "SF Mono"
    oCursor.CharHeight = 10

    ' Access the PageStyle family and apply margins (in hundredths of mm, 0.5 inch = 1270)
    oStyleFamilies = oDoc.getStyleFamilies()
    oPageStyle = oStyleFamilies.getByName("PageStyles").getByName("Standard")
    oPageStyle.LeftMargin = 800
    oPageStyle.RightMargin = 800

    ' Set the save path (PDF format) in the current directory
    SavePath = ConvertToURL(oDoc.URL)
    SavePath = Left(SavePath, Len(SavePath) - 4) & ".pdf" ' Change extension to .pdf
    
    ' Export as PDF
    Dim ExportProps(0) As New com.sun.star.beans.PropertyValue
    ExportProps(0).Name = "FilterName"
    ExportProps(0).Value = "writer_pdf_Export"
    oDoc.storeToURL(SavePath, ExportProps)

End Sub
