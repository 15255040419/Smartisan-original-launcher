.class abstract enum Landroid/icu/text/BidiTransform$ReorderingScheme;
.super Ljava/lang/Enum;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BidiTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "ReorderingScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/BidiTransform$ReorderingScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_LTR_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_LTR_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_LTR_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_LTR_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_RTL_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_RTL_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_RTL_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_RTL_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_LTR_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_LTR_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_LTR_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_LTR_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_RTL_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_RTL_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_RTL_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_RTL_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 366
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$1;

    const/4 v1, 0x0

    const-string v2, "LOG_LTR_TO_VIS_LTR"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/BidiTransform$ReorderingScheme$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 379
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$2;

    const/4 v2, 0x1

    const-string v3, "LOG_RTL_TO_VIS_LTR"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/BidiTransform$ReorderingScheme$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 392
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$3;

    const/4 v3, 0x2

    const-string v4, "LOG_LTR_TO_VIS_RTL"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/BidiTransform$ReorderingScheme$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 406
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$4;

    const/4 v4, 0x3

    const-string v5, "LOG_RTL_TO_VIS_RTL"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/BidiTransform$ReorderingScheme$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 420
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$5;

    const/4 v5, 0x4

    const-string v6, "VIS_LTR_TO_LOG_RTL"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/BidiTransform$ReorderingScheme$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 433
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$6;

    const/4 v6, 0x5

    const-string v7, "VIS_RTL_TO_LOG_RTL"

    invoke-direct {v0, v7, v6}, Landroid/icu/text/BidiTransform$ReorderingScheme$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 447
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$7;

    const/4 v7, 0x6

    const-string v8, "VIS_LTR_TO_LOG_LTR"

    invoke-direct {v0, v8, v7}, Landroid/icu/text/BidiTransform$ReorderingScheme$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 460
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$8;

    const/4 v8, 0x7

    const-string v9, "VIS_RTL_TO_LOG_LTR"

    invoke-direct {v0, v9, v8}, Landroid/icu/text/BidiTransform$ReorderingScheme$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 474
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$9;

    const/16 v9, 0x8

    const-string v10, "LOG_LTR_TO_LOG_RTL"

    invoke-direct {v0, v10, v9}, Landroid/icu/text/BidiTransform$ReorderingScheme$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 489
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$10;

    const/16 v10, 0x9

    const-string v11, "LOG_RTL_TO_LOG_LTR"

    invoke-direct {v0, v11, v10}, Landroid/icu/text/BidiTransform$ReorderingScheme$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 504
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$11;

    const/16 v11, 0xa

    const-string v12, "VIS_LTR_TO_VIS_RTL"

    invoke-direct {v0, v12, v11}, Landroid/icu/text/BidiTransform$ReorderingScheme$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 518
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$12;

    const/16 v12, 0xb

    const-string v13, "VIS_RTL_TO_VIS_LTR"

    invoke-direct {v0, v13, v12}, Landroid/icu/text/BidiTransform$ReorderingScheme$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 532
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$13;

    const/16 v13, 0xc

    const-string v14, "LOG_LTR_TO_LOG_LTR"

    invoke-direct {v0, v14, v13}, Landroid/icu/text/BidiTransform$ReorderingScheme$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 545
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$14;

    const/16 v14, 0xd

    const-string v15, "LOG_RTL_TO_LOG_RTL"

    invoke-direct {v0, v15, v14}, Landroid/icu/text/BidiTransform$ReorderingScheme$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 558
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$15;

    const/16 v15, 0xe

    const-string v14, "VIS_LTR_TO_VIS_LTR"

    invoke-direct {v0, v14, v15}, Landroid/icu/text/BidiTransform$ReorderingScheme$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 571
    new-instance v0, Landroid/icu/text/BidiTransform$ReorderingScheme$16;

    const-string v14, "VIS_RTL_TO_VIS_RTL"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Landroid/icu/text/BidiTransform$ReorderingScheme$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/icu/text/BidiTransform$ReorderingScheme;

    .line 365
    sget-object v14, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v14, v0, v1

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v10

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v11

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v12

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_LOG_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    aput-object v1, v0, v13

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_LOG_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_VIS_LTR:Landroid/icu/text/BidiTransform$ReorderingScheme;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_VIS_RTL:Landroid/icu/text/BidiTransform$ReorderingScheme;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->$VALUES:[Landroid/icu/text/BidiTransform$ReorderingScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/icu/text/BidiTransform$1;)V
    .locals 0

    .line 365
    invoke-direct {p0, p1, p2}, Landroid/icu/text/BidiTransform$ReorderingScheme;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/BidiTransform$ReorderingScheme;
    .locals 1

    .line 365
    const-class v0, Landroid/icu/text/BidiTransform$ReorderingScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/BidiTransform$ReorderingScheme;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/BidiTransform$ReorderingScheme;
    .locals 1

    .line 365
    sget-object v0, Landroid/icu/text/BidiTransform$ReorderingScheme;->$VALUES:[Landroid/icu/text/BidiTransform$ReorderingScheme;

    invoke-virtual {v0}, [Landroid/icu/text/BidiTransform$ReorderingScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/BidiTransform$ReorderingScheme;

    return-object v0
.end method


# virtual methods
.method abstract doTransform(Landroid/icu/text/BidiTransform;)V
.end method

.method abstract matches(BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;)Z
.end method
