.class public final Landroid/media/MimeUtils;
.super Ljava/lang/Object;
.source "MimeUtils.java"


# static fields
.field private static final extensionToMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mimeTypeToExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    const-string v0, "application/andrew-inset"

    const-string v1, "ez"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/dsptype"

    const-string v1, "tsp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/futuresplash"

    const-string v1, "spl"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/hta"

    const-string v1, "hta"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mac-binhex40"

    const-string v1, "hqx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mac-compactpro"

    const-string v1, "cpt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mathematica"

    const-string v1, "nb"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/msaccess"

    const-string v1, "mdb"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/oda"

    const-string v1, "oda"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pdf"

    const-string v1, "pdf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pgp-keys"

    const-string v1, "key"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pgp-signature"

    const-string v1, "pgp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pics-rules"

    const-string v1, "prf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/rar"

    const-string v1, "rar"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/rdf+xml"

    const-string v1, "rdf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/rss+xml"

    const-string v1, "rss"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/zip"

    const-string v1, "zip"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.android.package-archive"

    const-string v1, "apk"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.cinderella"

    const-string v1, "cdy"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-pki.stl"

    const-string v1, "stl"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.database"

    const-string v1, "odb"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.formula"

    const-string v1, "odf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.graphics"

    const-string v1, "odg"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    const-string v1, "otg"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.image"

    const-string v1, "odi"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    const-string v1, "ods"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string v1, "ots"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text"

    const-string v1, "odt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-master"

    const-string v1, "odm"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-template"

    const-string v1, "ott"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-web"

    const-string v1, "oth"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.google-earth.kml+xml"

    const-string v1, "kml"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.google-earth.kmz"

    const-string v1, "kmz"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/msword"

    const-string v1, "doc"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/msword"

    const-string v1, "dot"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v1, "docx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v1, "dotx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-excel"

    const-string v1, "xls"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-excel"

    const-string v1, "xlt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v1, "xlsx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v1, "xltx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-powerpoint"

    const-string v1, "ppt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-powerpoint"

    const-string v1, "pot"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-powerpoint"

    const-string v1, "pps"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v1, "pptx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v1, "potx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v1, "ppsx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.rim.cod"

    const-string v1, "cod"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.smaf"

    const-string v1, "mmf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.calc"

    const-string v1, "sdc"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.draw"

    const-string v1, "sda"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.impress"

    const-string v1, "sdd"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.impress"

    const-string v1, "sdp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.math"

    const-string v1, "smf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer"

    const-string v1, "sdw"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer"

    const-string v1, "vor"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer-global"

    const-string v1, "sgl"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.calc"

    const-string v1, "sxc"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.calc.template"

    const-string v1, "stc"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.draw"

    const-string v1, "sxd"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.draw.template"

    const-string v1, "std"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.impress"

    const-string v1, "sxi"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.impress.template"

    const-string v1, "sti"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.math"

    const-string v1, "sxm"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer"

    const-string v1, "sxw"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer.global"

    const-string v1, "sxg"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer.template"

    const-string v1, "stw"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.visio"

    const-string v1, "vsd"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-abiword"

    const-string v1, "abw"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-apple-diskimage"

    const-string v1, "dmg"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-bcpio"

    const-string v1, "bcpio"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-bittorrent"

    const-string v1, "torrent"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cdf"

    const-string v1, "cdf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cdlink"

    const-string v1, "vcd"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-chess-pgn"

    const-string v1, "pgn"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cpio"

    const-string v1, "cpio"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-debian-package"

    const-string v1, "deb"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-debian-package"

    const-string v1, "udeb"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-director"

    const-string v1, "dcr"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-director"

    const-string v1, "dir"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-director"

    const-string v1, "dxr"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-dms"

    const-string v1, "dms"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-doom"

    const-string v1, "wad"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-dvi"

    const-string v1, "dvi"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-font"

    const-string v1, "pfa"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-font"

    const-string v1, "pfb"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-font"

    const-string v1, "gsf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-font"

    const-string v1, "pcf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-font"

    const-string v1, "pcf.Z"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-freemind"

    const-string v1, "mm"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-futuresplash"

    const-string v1, "spl"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-gnumeric"

    const-string v1, "gnumeric"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-go-sgf"

    const-string v1, "sgf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-graphing-calculator"

    const-string v1, "gcf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-gtar"

    const-string v1, "gtar"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-gtar"

    const-string v1, "tgz"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-gtar"

    const-string v1, "taz"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-hdf"

    const-string v1, "hdf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ica"

    const-string v1, "ica"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-internet-signup"

    const-string v1, "ins"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-internet-signup"

    const-string v1, "isp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-iphone"

    const-string v1, "iii"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-iso9660-image"

    const-string v1, "iso"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-jmol"

    const-string v1, "jmz"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kchart"

    const-string v1, "chrt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-killustrator"

    const-string v1, "kil"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-koan"

    const-string v1, "skp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-koan"

    const-string v1, "skd"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-koan"

    const-string v1, "skt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-koan"

    const-string v1, "skm"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kpresenter"

    const-string v1, "kpr"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kpresenter"

    const-string v1, "kpt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kspread"

    const-string v1, "ksp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kword"

    const-string v1, "kwd"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kword"

    const-string v1, "kwt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-latex"

    const-string v1, "latex"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lha"

    const-string v1, "lha"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lzh"

    const-string v1, "lzh"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lzx"

    const-string v1, "lzx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-maker"

    const-string v1, "frm"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-maker"

    const-string v1, "maker"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-maker"

    const-string v1, "frame"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-maker"

    const-string v1, "fb"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-maker"

    const-string v1, "book"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-maker"

    const-string v1, "fbdoc"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-mif"

    const-string v1, "mif"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ms-wmd"

    const-string v1, "wmd"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ms-wmz"

    const-string v1, "wmz"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-msi"

    const-string v1, "msi"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ns-proxy-autoconfig"

    const-string v1, "pac"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-nwc"

    const-string v1, "nwc"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-object"

    const-string v1, "o"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-oz-application"

    const-string v1, "oza"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs12"

    const-string v1, "p12"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs7-certreqresp"

    const-string v1, "p7r"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs7-crl"

    const-string v1, "crl"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-quicktimeplayer"

    const-string v1, "qtl"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-shar"

    const-string v1, "shar"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-shockwave-flash"

    const-string v1, "swf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-stuffit"

    const-string v1, "sit"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-sv4cpio"

    const-string v1, "sv4cpio"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-sv4crc"

    const-string v1, "sv4crc"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-tar"

    const-string v1, "tar"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-texinfo"

    const-string v1, "texinfo"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-texinfo"

    const-string v1, "texi"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff"

    const-string v1, "t"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff"

    const-string v1, "roff"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff-man"

    const-string v1, "man"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ustar"

    const-string v1, "ustar"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-wais-source"

    const-string v1, "src"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-wingz"

    const-string v1, "wz"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-webarchive"

    const-string v1, "webarchive"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-webarchive-xml"

    const-string v1, "webarchivexml"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-x509-ca-cert"

    const-string v1, "crt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-x509-user-cert"

    const-string v1, "crt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-xcf"

    const-string v1, "xcf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-xfig"

    const-string v1, "fig"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/xhtml+xml"

    const-string v1, "xhtml"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/theme-package"

    const-string v1, "lwt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/theme-package"

    const-string v1, "lzt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-epoc/x-sisx-app"

    const-string v1, "sisx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-conference/x-cooltalk"

    const-string v1, "ice"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/iges"

    const-string v1, "igs"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/iges"

    const-string v1, "iges"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/mesh"

    const-string v1, "msh"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/mesh"

    const-string v1, "mesh"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/mesh"

    const-string v1, "silo"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/calendar"

    const-string v1, "ics"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/calendar"

    const-string v1, "icz"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/comma-separated-values"

    const-string v1, "csv"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/css"

    const-string v1, "css"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/html"

    const-string v1, "htm"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/html"

    const-string v1, "html"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/h323"

    const-string v1, "323"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/iuls"

    const-string v1, "uls"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/mathml"

    const-string v1, "mml"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/plain"

    const-string v1, "txt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/plain"

    const-string v1, "asc"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/plain"

    const-string v1, "diff"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/plain"

    const-string v1, "po"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/richtext"

    const-string v1, "rtx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/rtf"

    const-string v1, "rtf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/text"

    const-string v1, "phps"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/tab-separated-values"

    const-string v1, "tsv"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/xml"

    const-string v1, "xml"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-bibtex"

    const-string v1, "bib"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-boo"

    const-string v1, "boo"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++hdr"

    const-string v1, "h++"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++hdr"

    const-string v1, "hpp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++hdr"

    const-string v1, "hxx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++hdr"

    const-string v1, "hh"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++src"

    const-string v1, "c++"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++src"

    const-string v1, "cpp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++src"

    const-string v1, "cxx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-chdr"

    const-string v1, "h"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-component"

    const-string v1, "htc"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-csh"

    const-string v1, "csh"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-csrc"

    const-string v1, "c"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-dsrc"

    const-string v1, "d"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-haskell"

    const-string v1, "hs"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-java"

    const-string v1, "java"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-literate-haskell"

    const-string v1, "lhs"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-moc"

    const-string v1, "moc"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pascal"

    const-string v1, "p"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pascal"

    const-string v1, "pas"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pcs-gcd"

    const-string v1, "gcd"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-setext"

    const-string v1, "etx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tcl"

    const-string v1, "tcl"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tex"

    const-string v1, "tex"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tex"

    const-string v1, "ltx"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tex"

    const-string v1, "sty"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tex"

    const-string v1, "cls"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-vcalendar"

    const-string v1, "vcs"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-vcard"

    const-string v1, "vcf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/ssa"

    const-string v1, "ssa"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/ass"

    const-string v1, "ass"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/srt"

    const-string v1, "srt"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/utf8"

    const-string v1, "text"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/bmp"

    const-string v1, "bmp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/jpeg"

    const-string v1, "jpeg"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/jpeg"

    const-string v1, "jpg"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/jpeg"

    const-string v1, "jpe"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/png"

    const-string v1, "png"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/webp"

    const-string v1, "webp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/vnd.wap.wbmp"

    const-string v1, "wbmp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/gif"

    const-string v1, "gif"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/ape"

    const-string v1, "ape"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/ape"

    const-string v1, "apl"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/ape"

    const-string v1, "mac"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/aac-adts"

    const-string v1, "aac"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/aac-adts"

    const-string v1, "aac1"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/aac-adts"

    const-string v1, "aac2"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/flac"

    const-string v1, "flac"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/amr-wb"

    const-string v1, "amr"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mpeg"

    const-string v1, "mp2"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mpeg"

    const-string v1, "mp3"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mpeg"

    const-string v1, "m2a"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/wav"

    const-string v1, "wav"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/ogg"

    const-string v1, "ogg"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/midi"

    const-string v1, "mid"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/midi"

    const-string v1, "midi"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-ms-wma"

    const-string v1, "wma"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/flv"

    const-string v1, "flv"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/flv"

    const-string v1, "f4v"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/rm"

    const-string v1, "rm"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/rm"

    const-string v1, "rmvb"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/rm"

    const-string v1, "ra"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-asf"

    const-string v1, "asf"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-asf"

    const-string v1, "wmv"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/avi"

    const-string v1, "avi"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp4"

    const-string v1, "mp4"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp4"

    const-string v1, "m4a"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp4"

    const-string v1, "mov"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp4"

    const-string v1, "3gp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp4"

    const-string v1, "3g2"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp4"

    const-string v1, "mj2"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-matroska"

    const-string v1, "mkv"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-matroska"

    const-string v1, "mka"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp2ts"

    const-string v1, "ts"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp2ts"

    const-string v1, "m2ts"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp2ts"

    const-string v1, "tp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp2ts"

    const-string v1, "trp"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp2p"

    const-string v1, "mpeg"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp2p"

    const-string v1, "mpg"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp2p"

    const-string v1, "vob"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp2p"

    const-string v1, "dat"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/webm"

    const-string v1, "webm"

    invoke-static {v0, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MimeUtils;->applyOverrides()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"
    .parameter "extension"

    .prologue
    sget-object v0, Landroid/media/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/media/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Landroid/media/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static applyOverrides()V
    .locals 7

    .prologue
    invoke-static {}, Landroid/media/MimeUtils;->getContentTypesPropertiesStream()Ljava/io/InputStream;

    move-result-object v5

    .local v5, stream:Ljava/io/InputStream;
    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .local v4, overrides:Ljava/util/Properties;
    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, extension:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, mimeType:Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/media/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1           #extension:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #overrides:Ljava/util/Properties;
    :catchall_0
    move-exception v6

    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v6

    :catch_0
    move-exception v6

    goto :goto_0

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #overrides:Ljava/util/Properties;
    :cond_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static getContentTypesPropertiesStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const-string v2, "content.types.user.table"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, userTable:Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    .end local v0           #f:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "content-types.properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mimeType"

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/media/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "extension"

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/media/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static hasExtension(Ljava/lang/String;)Z
    .locals 1
    .parameter "extension"

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Landroid/media/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Landroid/media/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
