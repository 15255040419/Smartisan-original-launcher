.class final enum Landroid/icu/util/Calendar$CalType;
.super Ljava/lang/Enum;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/Calendar$CalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/Calendar$CalType;

.field public static final enum BUDDHIST:Landroid/icu/util/Calendar$CalType;

.field public static final enum CHINESE:Landroid/icu/util/Calendar$CalType;

.field public static final enum COPTIC:Landroid/icu/util/Calendar$CalType;

.field public static final enum DANGI:Landroid/icu/util/Calendar$CalType;

.field public static final enum ETHIOPIC:Landroid/icu/util/Calendar$CalType;

.field public static final enum ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

.field public static final enum GREGORIAN:Landroid/icu/util/Calendar$CalType;

.field public static final enum HEBREW:Landroid/icu/util/Calendar$CalType;

.field public static final enum INDIAN:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISO8601:Landroid/icu/util/Calendar$CalType;

.field public static final enum JAPANESE:Landroid/icu/util/Calendar$CalType;

.field public static final enum PERSIAN:Landroid/icu/util/Calendar$CalType;

.field public static final enum ROC:Landroid/icu/util/Calendar$CalType;

.field public static final enum UNKNOWN:Landroid/icu/util/Calendar$CalType;


# instance fields
.field id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1713
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/4 v1, 0x0

    const-string v2, "GREGORIAN"

    const-string v3, "gregorian"

    invoke-direct {v0, v2, v1, v3}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    .line 1714
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/4 v2, 0x1

    const-string v3, "ISO8601"

    const-string v4, "iso8601"

    invoke-direct {v0, v3, v2, v4}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISO8601:Landroid/icu/util/Calendar$CalType;

    .line 1716
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/4 v3, 0x2

    const-string v4, "BUDDHIST"

    const-string v5, "buddhist"

    invoke-direct {v0, v4, v3, v5}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->BUDDHIST:Landroid/icu/util/Calendar$CalType;

    .line 1717
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/4 v4, 0x3

    const-string v5, "CHINESE"

    const-string v6, "chinese"

    invoke-direct {v0, v5, v4, v6}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->CHINESE:Landroid/icu/util/Calendar$CalType;

    .line 1718
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/4 v5, 0x4

    const-string v6, "COPTIC"

    const-string v7, "coptic"

    invoke-direct {v0, v6, v5, v7}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->COPTIC:Landroid/icu/util/Calendar$CalType;

    .line 1719
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/4 v6, 0x5

    const-string v7, "DANGI"

    const-string v8, "dangi"

    invoke-direct {v0, v7, v6, v8}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->DANGI:Landroid/icu/util/Calendar$CalType;

    .line 1720
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/4 v7, 0x6

    const-string v8, "ETHIOPIC"

    const-string v9, "ethiopic"

    invoke-direct {v0, v8, v7, v9}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ETHIOPIC:Landroid/icu/util/Calendar$CalType;

    .line 1721
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/4 v8, 0x7

    const-string v9, "ETHIOPIC_AMETE_ALEM"

    const-string v10, "ethiopic-amete-alem"

    invoke-direct {v0, v9, v8, v10}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

    .line 1722
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/16 v9, 0x8

    const-string v10, "HEBREW"

    const-string v11, "hebrew"

    invoke-direct {v0, v10, v9, v11}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->HEBREW:Landroid/icu/util/Calendar$CalType;

    .line 1723
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/16 v10, 0x9

    const-string v11, "INDIAN"

    const-string v12, "indian"

    invoke-direct {v0, v11, v10, v12}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->INDIAN:Landroid/icu/util/Calendar$CalType;

    .line 1724
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/16 v11, 0xa

    const-string v12, "ISLAMIC"

    const-string v13, "islamic"

    invoke-direct {v0, v12, v11, v13}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC:Landroid/icu/util/Calendar$CalType;

    .line 1725
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/16 v12, 0xb

    const-string v13, "ISLAMIC_CIVIL"

    const-string v14, "islamic-civil"

    invoke-direct {v0, v13, v12, v14}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

    .line 1726
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/16 v13, 0xc

    const-string v14, "ISLAMIC_RGSA"

    const-string v15, "islamic-rgsa"

    invoke-direct {v0, v14, v13, v15}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

    .line 1727
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/16 v14, 0xd

    const-string v15, "ISLAMIC_TBLA"

    const-string v13, "islamic-tbla"

    invoke-direct {v0, v15, v14, v13}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

    .line 1728
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const/16 v13, 0xe

    const-string v15, "ISLAMIC_UMALQURA"

    const-string v14, "islamic-umalqura"

    invoke-direct {v0, v15, v13, v14}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

    .line 1729
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string v14, "JAPANESE"

    const/16 v15, 0xf

    const-string v13, "japanese"

    invoke-direct {v0, v14, v15, v13}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->JAPANESE:Landroid/icu/util/Calendar$CalType;

    .line 1730
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string v13, "PERSIAN"

    const/16 v14, 0x10

    const-string/jumbo v15, "persian"

    invoke-direct {v0, v13, v14, v15}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->PERSIAN:Landroid/icu/util/Calendar$CalType;

    .line 1731
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string v13, "ROC"

    const/16 v14, 0x11

    const-string/jumbo v15, "roc"

    invoke-direct {v0, v13, v14, v15}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ROC:Landroid/icu/util/Calendar$CalType;

    .line 1733
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string v13, "UNKNOWN"

    const/16 v14, 0x12

    const-string/jumbo v15, "unknown"

    invoke-direct {v0, v13, v14, v15}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    const/16 v0, 0x13

    new-array v0, v0, [Landroid/icu/util/Calendar$CalType;

    .line 1712
    sget-object v13, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    aput-object v13, v0, v1

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISO8601:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->BUDDHIST:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/util/Calendar$CalType;->CHINESE:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/Calendar$CalType;->COPTIC:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/Calendar$CalType;->DANGI:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ETHIOPIC:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/util/Calendar$CalType;->HEBREW:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/util/Calendar$CalType;->INDIAN:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v10

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v11

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v12

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->JAPANESE:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->PERSIAN:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ROC:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/Calendar$CalType;->$VALUES:[Landroid/icu/util/Calendar$CalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1737
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1738
    iput-object p3, p0, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/Calendar$CalType;
    .locals 1

    .line 1712
    const-class v0, Landroid/icu/util/Calendar$CalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/util/Calendar$CalType;

    return-object p0
.end method

.method public static values()[Landroid/icu/util/Calendar$CalType;
    .locals 1

    .line 1712
    sget-object v0, Landroid/icu/util/Calendar$CalType;->$VALUES:[Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v0}, [Landroid/icu/util/Calendar$CalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/Calendar$CalType;

    return-object v0
.end method
