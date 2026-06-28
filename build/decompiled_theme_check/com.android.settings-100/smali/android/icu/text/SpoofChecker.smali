.class public Landroid/icu/text/SpoofChecker;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$ScriptSet;,
        Landroid/icu/text/SpoofChecker$SpoofData;,
        Landroid/icu/text/SpoofChecker$ConfusableDataUtils;,
        Landroid/icu/text/SpoofChecker$CheckResult;,
        Landroid/icu/text/SpoofChecker$Builder;,
        Landroid/icu/text/SpoofChecker$RestrictionLevel;
    }
.end annotation


# static fields
.field public static final ALL_CHECKS:I = -0x1

.field public static final ANY_CASE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final ASCII:Landroid/icu/text/UnicodeSet;

.field public static final CHAR_LIMIT:I = 0x40

.field public static final CONFUSABLE:I = 0x7

.field public static final INCLUSION:Landroid/icu/text/UnicodeSet;

.field public static final INVISIBLE:I = 0x20

.field public static final MIXED_NUMBERS:I = 0x80

.field public static final MIXED_SCRIPT_CONFUSABLE:I = 0x2

.field public static final RECOMMENDED:Landroid/icu/text/UnicodeSet;

.field public static final RESTRICTION_LEVEL:I = 0x10

.field public static final SINGLE_SCRIPT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SINGLE_SCRIPT_CONFUSABLE:I = 0x1

.field public static final WHOLE_SCRIPT_CONFUSABLE:I = 0x4

.field private static nfdNormalizer:Landroid/icu/text/Normalizer2;


# instance fields
.field private fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

.field private fAllowedLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private fChecks:I

.field private fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field private fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 260
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[\'\\-.\\:\\u00B7\\u0375\\u058A\\u05F3\\u05F4\\u06FD\\u06FE\\u0F0B\\u200C\\u200D\\u2010\\u2019\\u2027\\u30A0\\u30FB]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->INCLUSION:Landroid/icu/text/UnicodeSet;

    .line 271
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[0-9A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u0131\\u0134-\\u013E\\u0141-\\u0148\\u014A-\\u017E\\u018F\\u01A0\\u01A1\\u01AF\\u01B0\\u01CD-\\u01DC\\u01DE-\\u01E3\\u01E6-\\u01F0\\u01F4\\u01F5\\u01F8-\\u021B\\u021E\\u021F\\u0226-\\u0233\\u0259\\u02BB\\u02BC\\u02EC\\u0300-\\u0304\\u0306-\\u030C\\u030F-\\u0311\\u0313\\u0314\\u031B\\u0323-\\u0328\\u032D\\u032E\\u0330\\u0331\\u0335\\u0338\\u0339\\u0342\\u0345\\u037B-\\u037D\\u0386\\u0388-\\u038A\\u038C\\u038E-\\u03A1\\u03A3-\\u03CE\\u03FC-\\u045F\\u048A-\\u0529\\u052E\\u052F\\u0531-\\u0556\\u0559\\u0561-\\u0586\\u05B4\\u05D0-\\u05EA\\u05F0-\\u05F2\\u0620-\\u063F\\u0641-\\u0655\\u0660-\\u0669\\u0670-\\u0672\\u0674\\u0679-\\u068D\\u068F-\\u06D3\\u06D5\\u06E5\\u06E6\\u06EE-\\u06FC\\u06FF\\u0750-\\u07B1\\u08A0-\\u08AC\\u08B2\\u08B6-\\u08BD\\u0901-\\u094D\\u094F\\u0950\\u0956\\u0957\\u0960-\\u0963\\u0966-\\u096F\\u0971-\\u0977\\u0979-\\u097F\\u0981-\\u0983\\u0985-\\u098C\\u098F\\u0990\\u0993-\\u09A8\\u09AA-\\u09B0\\u09B2\\u09B6-\\u09B9\\u09BC-\\u09C4\\u09C7\\u09C8\\u09CB-\\u09CE\\u09D7\\u09E0-\\u09E3\\u09E6-\\u09F1\\u0A01-\\u0A03\\u0A05-\\u0A0A\\u0A0F\\u0A10\\u0A13-\\u0A28\\u0A2A-\\u0A30\\u0A32\\u0A35\\u0A38\\u0A39\\u0A3C\\u0A3E-\\u0A42\\u0A47\\u0A48\\u0A4B-\\u0A4D\\u0A5C\\u0A66-\\u0A74\\u0A81-\\u0A83\\u0A85-\\u0A8D\\u0A8F-\\u0A91\\u0A93-\\u0AA8\\u0AAA-\\u0AB0\\u0AB2\\u0AB3\\u0AB5-\\u0AB9\\u0ABC-\\u0AC5\\u0AC7-\\u0AC9\\u0ACB-\\u0ACD\\u0AD0\\u0AE0-\\u0AE3\\u0AE6-\\u0AEF\\u0B01-\\u0B03\\u0B05-\\u0B0C\\u0B0F\\u0B10\\u0B13-\\u0B28\\u0B2A-\\u0B30\\u0B32\\u0B33\\u0B35-\\u0B39\\u0B3C-\\u0B43\\u0B47\\u0B48\\u0B4B-\\u0B4D\\u0B56\\u0B57\\u0B5F-\\u0B61\\u0B66-\\u0B6F\\u0B71\\u0B82\\u0B83\\u0B85-\\u0B8A\\u0B8E-\\u0B90\\u0B92-\\u0B95\\u0B99\\u0B9A\\u0B9C\\u0B9E\\u0B9F\\u0BA3\\u0BA4\\u0BA8-\\u0BAA\\u0BAE-\\u0BB9\\u0BBE-\\u0BC2\\u0BC6-\\u0BC8\\u0BCA-\\u0BCD\\u0BD0\\u0BD7\\u0BE6-\\u0BEF\\u0C01-\\u0C03\\u0C05-\\u0C0C\\u0C0E-\\u0C10\\u0C12-\\u0C28\\u0C2A-\\u0C33\\u0C35-\\u0C39\\u0C3D-\\u0C44\\u0C46-\\u0C48\\u0C4A-\\u0C4D\\u0C55\\u0C56\\u0C60\\u0C61\\u0C66-\\u0C6F\\u0C80\\u0C82\\u0C83\\u0C85-\\u0C8C\\u0C8E-\\u0C90\\u0C92-\\u0CA8\\u0CAA-\\u0CB3\\u0CB5-\\u0CB9\\u0CBC-\\u0CC4\\u0CC6-\\u0CC8\\u0CCA-\\u0CCD\\u0CD5\\u0CD6\\u0CE0-\\u0CE3\\u0CE6-\\u0CEF\\u0CF1\\u0CF2\\u0D02\\u0D03\\u0D05-\\u0D0C\\u0D0E-\\u0D10\\u0D12-\\u0D3A\\u0D3D-\\u0D43\\u0D46-\\u0D48\\u0D4A-\\u0D4E\\u0D54-\\u0D57\\u0D60\\u0D61\\u0D66-\\u0D6F\\u0D7A-\\u0D7F\\u0D82\\u0D83\\u0D85-\\u0D8E\\u0D91-\\u0D96\\u0D9A-\\u0DA5\\u0DA7-\\u0DB1\\u0DB3-\\u0DBB\\u0DBD\\u0DC0-\\u0DC6\\u0DCA\\u0DCF-\\u0DD4\\u0DD6\\u0DD8-\\u0DDE\\u0DF2\\u0E01-\\u0E32\\u0E34-\\u0E3A\\u0E40-\\u0E4E\\u0E50-\\u0E59\\u0E81\\u0E82\\u0E84\\u0E87\\u0E88\\u0E8A\\u0E8D\\u0E94-\\u0E97\\u0E99-\\u0E9F\\u0EA1-\\u0EA3\\u0EA5\\u0EA7\\u0EAA\\u0EAB\\u0EAD-\\u0EB2\\u0EB4-\\u0EB9\\u0EBB-\\u0EBD\\u0EC0-\\u0EC4\\u0EC6\\u0EC8-\\u0ECD\\u0ED0-\\u0ED9\\u0EDE\\u0EDF\\u0F00\\u0F20-\\u0F29\\u0F35\\u0F37\\u0F3E-\\u0F42\\u0F44-\\u0F47\\u0F49-\\u0F4C\\u0F4E-\\u0F51\\u0F53-\\u0F56\\u0F58-\\u0F5B\\u0F5D-\\u0F68\\u0F6A-\\u0F6C\\u0F71\\u0F72\\u0F74\\u0F7A-\\u0F80\\u0F82-\\u0F84\\u0F86-\\u0F92\\u0F94-\\u0F97\\u0F99-\\u0F9C\\u0F9E-\\u0FA1\\u0FA3-\\u0FA6\\u0FA8-\\u0FAB\\u0FAD-\\u0FB8\\u0FBA-\\u0FBC\\u0FC6\\u1000-\\u1049\\u1050-\\u109D\\u10C7\\u10CD\\u10D0-\\u10F0\\u10F7-\\u10FA\\u10FD-\\u10FF\\u1200-\\u1248\\u124A-\\u124D\\u1250-\\u1256\\u1258\\u125A-\\u125D\\u1260-\\u1288\\u128A-\\u128D\\u1290-\\u12B0\\u12B2-\\u12B5\\u12B8-\\u12BE\\u12C0\\u12C2-\\u12C5\\u12C8-\\u12D6\\u12D8-\\u1310\\u1312-\\u1315\\u1318-\\u135A\\u135D-\\u135F\\u1380-\\u138F\\u1780-\\u17A2\\u17A5-\\u17A7\\u17A9-\\u17B3\\u17B6-\\u17CA\\u17D2\\u17D7\\u17DC\\u17E0-\\u17E9\\u1C80-\\u1C88\\u1E00-\\u1E99\\u1E9E\\u1EA0-\\u1EF9\\u1F00-\\u1F15\\u1F18-\\u1F1D\\u1F20-\\u1F45\\u1F48-\\u1F4D\\u1F50-\\u1F57\\u1F59\\u1F5B\\u1F5D\\u1F5F-\\u1F70\\u1F72\\u1F74\\u1F76\\u1F78\\u1F7A\\u1F7C\\u1F80-\\u1FB4\\u1FB6-\\u1FBA\\u1FBC\\u1FC2-\\u1FC4\\u1FC6-\\u1FC8\\u1FCA\\u1FCC\\u1FD0-\\u1FD2\\u1FD6-\\u1FDA\\u1FE0-\\u1FE2\\u1FE4-\\u1FEA\\u1FEC\\u1FF2-\\u1FF4\\u1FF6-\\u1FF8\\u1FFA\\u1FFC\\u2D27\\u2D2D\\u2D80-\\u2D96\\u2DA0-\\u2DA6\\u2DA8-\\u2DAE\\u2DB0-\\u2DB6\\u2DB8-\\u2DBE\\u2DC0-\\u2DC6\\u2DC8-\\u2DCE\\u2DD0-\\u2DD6\\u2DD8-\\u2DDE\\u3005-\\u3007\\u3041-\\u3096\\u3099\\u309A\\u309D\\u309E\\u30A1-\\u30FA\\u30FC-\\u30FE\\u3105-\\u312D\\u31A0-\\u31BA\\u3400-\\u4DB5\\u4E00-\\u9FD5\\uA660\\uA661\\uA674-\\uA67B\\uA67F\\uA69F\\uA717-\\uA71F\\uA788\\uA78D\\uA78E\\uA790-\\uA793\\uA7A0-\\uA7AA\\uA7AE\\uA7FA\\uA9E7-\\uA9FE\\uAA60-\\uAA76\\uAA7A-\\uAA7F\\uAB01-\\uAB06\\uAB09-\\uAB0E\\uAB11-\\uAB16\\uAB20-\\uAB26\\uAB28-\\uAB2E\\uAC00-\\uD7A3\\uFA0E\\uFA0F\\uFA11\\uFA13\\uFA14\\uFA1F\\uFA21\\uFA23\\uFA24\\uFA27-\\uFA29\\U00020000-\\U0002A6D6\\U0002A700-\\U0002B734\\U0002B740-\\U0002B81D\\U0002B820-\\U0002CEA1]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->RECOMMENDED:Landroid/icu/text/UnicodeSet;

    .line 419
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->ASCII:Landroid/icu/text/UnicodeSet;

    .line 1596
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/SpoofChecker$1;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Landroid/icu/text/SpoofChecker;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/icu/text/SpoofChecker;)I
    .locals 0

    .line 214
    iget p0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    return p0
.end method

.method static synthetic access$002(Landroid/icu/text/SpoofChecker;I)I
    .locals 0

    .line 214
    iput p1, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    return p1
.end method

.method static synthetic access$100(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 0

    .line 214
    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    return-object p0
.end method

.method static synthetic access$102(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$SpoofData;)Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 0

    .line 214
    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    return-object p1
.end method

.method static synthetic access$200(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 214
    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method static synthetic access$202(Landroid/icu/text/SpoofChecker;Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 214
    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    return-object p1
.end method

.method static synthetic access$300(Landroid/icu/text/SpoofChecker;)Ljava/util/Set;
    .locals 0

    .line 214
    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$302(Landroid/icu/text/SpoofChecker;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 214
    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$400(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 0

    .line 214
    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p0
.end method

.method static synthetic access$402(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$RestrictionLevel;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 0

    .line 214
    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p1
.end method

.method private static getAugmentedScriptSet(ILandroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 3

    .line 1469
    invoke-virtual {p1}, Landroid/icu/text/SpoofChecker$ScriptSet;->clear()V

    .line 1470
    invoke-static {p0, p1}, Landroid/icu/lang/UScript;->getScriptExtensions(ILjava/util/BitSet;)I

    const/16 p0, 0x11

    .line 1473
    invoke-virtual {p1, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    const/16 v0, 0x77

    const/16 v1, 0xac

    const/16 v2, 0x69

    if-eqz p0, :cond_0

    .line 1474
    invoke-virtual {p1, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    .line 1475
    invoke-virtual {p1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    .line 1476
    invoke-virtual {p1, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    :cond_0
    const/16 p0, 0x14

    .line 1478
    invoke-virtual {p1, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1479
    invoke-virtual {p1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    :cond_1
    const/16 p0, 0x16

    .line 1481
    invoke-virtual {p1, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1482
    invoke-virtual {p1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    :cond_2
    const/16 p0, 0x12

    .line 1484
    invoke-virtual {p1, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1485
    invoke-virtual {p1, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    :cond_3
    const/4 p0, 0x5

    .line 1487
    invoke-virtual {p1, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1488
    invoke-virtual {p1, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    :cond_4
    const/4 p0, 0x0

    .line 1492
    invoke-virtual {p1, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1493
    :cond_5
    invoke-virtual {p1}, Landroid/icu/text/SpoofChecker$ScriptSet;->setAll()V

    :cond_6
    return-void
.end method

.method private getNumerics(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V
    .locals 3

    .line 1531
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    const/4 p0, 0x0

    .line 1533
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 1534
    invoke-static {p1, p0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1535
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p0, v1

    .line 1538
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 1541
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getNumericValue(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getResolvedScriptSet(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 1

    const/16 v0, 0xb2

    .line 1501
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSetWithout(Ljava/lang/CharSequence;ILandroid/icu/text/SpoofChecker$ScriptSet;)V

    return-void
.end method

.method private getResolvedScriptSetWithout(Ljava/lang/CharSequence;ILandroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 3

    .line 1509
    invoke-virtual {p3}, Landroid/icu/text/SpoofChecker$ScriptSet;->setAll()V

    .line 1511
    new-instance p0, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {p0}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    const/4 v0, 0x0

    .line 1512
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1513
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1514
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1517
    invoke-static {v1, p0}, Landroid/icu/text/SpoofChecker;->getAugmentedScriptSet(ILandroid/icu/text/SpoofChecker$ScriptSet;)V

    const/16 v1, 0xb2

    if-eq p2, v1, :cond_1

    .line 1521
    invoke-virtual {p0, p2}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1522
    :cond_1
    invoke-virtual {p3, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->and(Ljava/util/BitSet;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getRestrictionLevel(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 2

    .line 1551
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    sget-object p0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p0

    .line 1556
    :cond_0
    sget-object v0, Landroid/icu/text/SpoofChecker;->ASCII:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    sget-object p0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p0

    .line 1561
    :cond_1
    new-instance v0, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    .line 1562
    invoke-direct {p0, p1, v0}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSet(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1565
    invoke-virtual {v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1566
    sget-object p0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p0

    .line 1570
    :cond_2
    new-instance v0, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    const/16 v1, 0x19

    .line 1571
    invoke-direct {p0, p1, v1, v0}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSetWithout(Ljava/lang/CharSequence;ILandroid/icu/text/SpoofChecker$ScriptSet;)V

    const/16 p0, 0xac

    .line 1574
    invoke-virtual {v0, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_5

    const/16 p0, 0x69

    invoke-virtual {v0, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_5

    const/16 p0, 0x77

    .line 1575
    invoke-virtual {v0, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 1580
    :cond_3
    invoke-virtual {v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_4

    const/16 p0, 0xe

    invoke-virtual {v0, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x6

    .line 1581
    invoke-virtual {v0, p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1582
    sget-object p0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p0

    .line 1586
    :cond_4
    sget-object p0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p0

    .line 1576
    :cond_5
    :goto_0
    sget-object p0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p0
.end method


# virtual methods
.method public areConfusable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1337
    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    .line 1342
    invoke-virtual {p0, p1}, Landroid/icu/text/SpoofChecker;->getSkeleton(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1343
    invoke-virtual {p0, p2}, Landroid/icu/text/SpoofChecker;->getSkeleton(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1344
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1351
    :cond_0
    new-instance v0, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    .line 1352
    invoke-direct {p0, p1, v0}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSet(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1353
    new-instance p1, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {p1}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    .line 1354
    invoke-direct {p0, p2, p1}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSet(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1358
    invoke-virtual {v0, p1}, Landroid/icu/text/SpoofChecker$ScriptSet;->intersects(Ljava/util/BitSet;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 1362
    invoke-virtual {v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    move p1, p2

    .line 1368
    :goto_0
    iget p0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/2addr p0, p1

    return p0

    .line 1338
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No confusable checks are enabled."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1429
    instance-of v0, p1, Landroid/icu/text/SpoofChecker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1432
    :cond_0
    check-cast p1, Landroid/icu/text/SpoofChecker;

    .line 1433
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v2, p1, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/icu/text/SpoofChecker$SpoofData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1436
    :cond_1
    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    iget v2, p1, Landroid/icu/text/SpoofChecker;->fChecks:I

    if-eq v0, v2, :cond_2

    return v1

    .line 1439
    :cond_2
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    iget-object v2, p1, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_3

    .line 1440
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 1443
    :cond_3
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    iget-object v2, p1, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_4

    .line 1444
    invoke-virtual {v0, v2}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 1447
    :cond_4
    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    iget-object p1, p1, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public failsChecks(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1307
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/SpoofChecker;->failsChecks(Ljava/lang/String;Landroid/icu/text/SpoofChecker$CheckResult;)Z

    move-result p0

    return p0
.end method

.method public failsChecks(Ljava/lang/String;Landroid/icu/text/SpoofChecker$CheckResult;)Z
    .locals 10

    .line 1208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1212
    iput v1, p2, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    const/4 v2, 0x0

    .line 1213
    iput-object v2, p2, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    .line 1214
    iput-object v2, p2, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 1217
    :cond_0
    iget v2, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 1218
    invoke-direct {p0, p1}, Landroid/icu/text/SpoofChecker;->getRestrictionLevel(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$RestrictionLevel;

    move-result-object v2

    .line 1219
    iget-object v4, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-virtual {v2, v4}, Landroid/icu/text/SpoofChecker$RestrictionLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz p2, :cond_3

    .line 1223
    iput-object v2, p2, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1227
    :cond_3
    :goto_1
    iget v2, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit16 v2, v2, 0x80

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 1228
    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1229
    invoke-direct {p0, p1, v2}, Landroid/icu/text/SpoofChecker;->getNumerics(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V

    .line 1230
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v5

    if-le v5, v4, :cond_4

    or-int/lit16 v3, v3, 0x80

    :cond_4
    if-eqz p2, :cond_5

    .line 1234
    iput-object v2, p2, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    .line 1238
    :cond_5
    iget v2, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    move v2, v1

    :cond_6
    if-ge v2, v0, :cond_7

    .line 1243
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1244
    invoke-static {p1, v2, v4}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 1245
    iget-object v6, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 1252
    :cond_7
    iget p0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_d

    .line 1254
    sget-object p0, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1262
    new-instance p1, Landroid/icu/text/UnicodeSet;

    invoke-direct {p1}, Landroid/icu/text/UnicodeSet;-><init>()V

    move v2, v1

    move v5, v2

    :goto_2
    move v6, v5

    :goto_3
    if-ge v2, v0, :cond_d

    .line 1265
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 1266
    invoke-static {p0, v2, v4}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 1267
    invoke-static {v7}, Ljava/lang/Character;->getType(I)I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_9

    if-eqz v6, :cond_8

    .line 1270
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    move v5, v1

    goto :goto_2

    :cond_8
    move v5, v1

    goto :goto_3

    :cond_9
    if-nez v5, :cond_a

    move v5, v7

    goto :goto_3

    :cond_a
    if-nez v6, :cond_b

    .line 1280
    invoke-virtual {p1, v5}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move v6, v4

    .line 1283
    :cond_b
    invoke-virtual {p1, v7}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_c

    or-int/lit8 v3, v3, 0x20

    goto :goto_4

    .line 1289
    :cond_c
    invoke-virtual {p1, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_3

    :cond_d
    :goto_4
    if-eqz p2, :cond_e

    .line 1293
    iput v3, p2, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    :cond_e
    if-eqz v3, :cond_f

    move v1, v4

    :cond_f
    return v1
.end method

.method public getAllowedChars()Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1111
    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public getAllowedJavaLocales()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 1094
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1095
    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 1096
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllowedLocales()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 1084
    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getChecks()I
    .locals 0

    .line 1069
    iget p0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    return p0
.end method

.method public getRestrictionLevel()Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1060
    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p0
.end method

.method public getSkeleton(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1416
    invoke-virtual {p0, p2}, Landroid/icu/text/SpoofChecker;->getSkeleton(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSkeleton(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .line 1389
    sget-object v0, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1390
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1393
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1394
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 1395
    iget-object v4, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-virtual {v4, v3, v1}, Landroid/icu/text/SpoofChecker$SpoofData;->confusableLookup(ILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 1397
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1398
    sget-object p1, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    invoke-virtual {p1, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1458
    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 1459
    invoke-virtual {v1}, Landroid/icu/text/SpoofChecker$SpoofData;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    .line 1460
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    .line 1461
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 1462
    invoke-virtual {p0}, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ordinal()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
