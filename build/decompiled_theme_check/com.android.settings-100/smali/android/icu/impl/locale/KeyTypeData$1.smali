.class synthetic Landroid/icu/impl/locale/KeyTypeData$1;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$impl$locale$KeyTypeData$KeyInfoType:[I

.field static final synthetic $SwitchMap$android$icu$impl$locale$KeyTypeData$TypeInfoType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 473
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->values()[Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$TypeInfoType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$TypeInfoType:[I

    sget-object v2, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->deprecated:Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    invoke-virtual {v2}, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :catch_0
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->values()[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Landroid/icu/impl/locale/KeyTypeData$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$KeyInfoType:[I

    :try_start_1
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$KeyInfoType:[I

    sget-object v2, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->deprecated:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    invoke-virtual {v2}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$KeyInfoType:[I

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->valueType:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    invoke-virtual {v1}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
