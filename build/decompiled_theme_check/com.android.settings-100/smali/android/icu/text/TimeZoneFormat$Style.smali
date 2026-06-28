.class public final enum Landroid/icu/text/TimeZoneFormat$Style;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/TimeZoneFormat$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;


# instance fields
.field final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 88
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "GENERIC_LOCATION"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    .line 93
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v3, 0x2

    const-string v4, "GENERIC_LONG"

    invoke-direct {v0, v4, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    .line 98
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v4, 0x4

    const-string v5, "GENERIC_SHORT"

    invoke-direct {v0, v5, v3, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 103
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v5, 0x3

    const/16 v6, 0x8

    const-string v7, "SPECIFIC_LONG"

    invoke-direct {v0, v7, v5, v6}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    .line 108
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v7, 0x10

    const-string v8, "SPECIFIC_SHORT"

    invoke-direct {v0, v8, v4, v7}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 113
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v8, 0x5

    const-string v9, "LOCALIZED_GMT"

    const/16 v10, 0x20

    invoke-direct {v0, v9, v8, v10}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 118
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v9, 0x6

    const-string v10, "LOCALIZED_GMT_SHORT"

    const/16 v11, 0x40

    invoke-direct {v0, v10, v9, v11}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 124
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v10, 0x7

    const/16 v11, 0x80

    const-string v12, "ISO_BASIC_SHORT"

    invoke-direct {v0, v12, v10, v11}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 130
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v12, 0x100

    const-string v13, "ISO_BASIC_LOCAL_SHORT"

    invoke-direct {v0, v13, v6, v12}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 136
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v13, 0x9

    const-string v14, "ISO_BASIC_FIXED"

    invoke-direct {v0, v14, v13, v11}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    .line 142
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v14, 0xa

    const-string v15, "ISO_BASIC_LOCAL_FIXED"

    invoke-direct {v0, v15, v14, v12}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    .line 148
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v15, 0xb

    const-string v14, "ISO_BASIC_FULL"

    invoke-direct {v0, v14, v15, v11}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    .line 154
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string v14, "ISO_BASIC_LOCAL_FULL"

    const/16 v15, 0xc

    invoke-direct {v0, v14, v15, v12}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    .line 160
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string v14, "ISO_EXTENDED_FIXED"

    const/16 v15, 0xd

    invoke-direct {v0, v14, v15, v11}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    .line 166
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string v14, "ISO_EXTENDED_LOCAL_FIXED"

    const/16 v15, 0xe

    invoke-direct {v0, v14, v15, v12}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    .line 172
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string v14, "ISO_EXTENDED_FULL"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15, v11}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    .line 178
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string v11, "ISO_EXTENDED_LOCAL_FULL"

    invoke-direct {v0, v11, v7, v12}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    .line 182
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string v11, "ZONE_ID"

    const/16 v12, 0x11

    const/16 v14, 0x200

    invoke-direct {v0, v11, v12, v14}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    .line 186
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string v11, "ZONE_ID_SHORT"

    const/16 v12, 0x12

    const/16 v14, 0x400

    invoke-direct {v0, v11, v12, v14}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 190
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string v11, "EXEMPLAR_LOCATION"

    const/16 v12, 0x13

    const/16 v14, 0x800

    invoke-direct {v0, v11, v12, v14}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$Style;

    .line 83
    sget-object v11, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v11, v0, v1

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v10

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v13

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->$VALUES:[Landroid/icu/text/TimeZoneFormat$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput p3, p0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$Style;
    .locals 1

    .line 83
    const-class v0, Landroid/icu/text/TimeZoneFormat$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/TimeZoneFormat$Style;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/TimeZoneFormat$Style;
    .locals 1

    .line 83
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->$VALUES:[Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0}, [Landroid/icu/text/TimeZoneFormat$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/TimeZoneFormat$Style;

    return-object v0
.end method
