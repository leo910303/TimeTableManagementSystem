function openPrintPage() {
    var width = screen.width;
    var height = screen.height;
    window.open("ReportViewer.aspx", "Print", "left=0,top=0,width=" + width + ",height=" + height + ",resizable=yes,scrollbars=yes,toolbar=no,location=no,directories=no,status=no,menubar=no,copyhistory=no");

}
function openPrintPageLc() {
    var width = screen.width;
    var height = screen.height;
    window.open("ReportViewerLC.aspx", "Print", "left=0,top=0,width=" + width + ",height=" + height + ",resizable=yes,scrollbars=yes,toolbar=no,location=no,directories=no,status=no,menubar=no,copyhistory=no");

}