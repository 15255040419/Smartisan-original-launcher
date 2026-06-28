.class public final enum Landroid/icu/impl/number/Padder$PadPosition;
.super Ljava/lang/Enum;
.source "Padder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Padder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PadPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/Padder$PadPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/number/Padder$PadPosition;

.field public static final enum AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

.field public static final enum AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

.field public static final enum BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

.field public static final enum BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Landroid/icu/impl/number/Padder$PadPosition;

    const/4 v1, 0x0

    const-string v2, "BEFORE_PREFIX"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    .line 14
    new-instance v0, Landroid/icu/impl/number/Padder$PadPosition;

    const/4 v2, 0x1

    const-string v3, "AFTER_PREFIX"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    .line 15
    new-instance v0, Landroid/icu/impl/number/Padder$PadPosition;

    const/4 v3, 0x2

    const-string v4, "BEFORE_SUFFIX"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    .line 16
    new-instance v0, Landroid/icu/impl/number/Padder$PadPosition;

    const/4 v4, 0x3

    const-string v5, "AFTER_SUFFIX"

    invoke-direct {v0, v5, v4}, Landroid/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/impl/number/Padder$PadPosition;

    .line 12
    sget-object v5, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/impl/number/Padder$PadPosition;->$VALUES:[Landroid/icu/impl/number/Padder$PadPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOld(I)Landroid/icu/impl/number/Padder$PadPosition;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 27
    sget-object p0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to map "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    sget-object p0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    return-object p0

    .line 23
    :cond_2
    sget-object p0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    return-object p0

    .line 21
    :cond_3
    sget-object p0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/number/Padder$PadPosition;
    .locals 1

    .line 12
    const-class v0, Landroid/icu/impl/number/Padder$PadPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/number/Padder$PadPosition;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/number/Padder$PadPosition;
    .locals 1

    .line 12
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->$VALUES:[Landroid/icu/impl/number/Padder$PadPosition;

    invoke-virtual {v0}, [Landroid/icu/impl/number/Padder$PadPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/Padder$PadPosition;

    return-object v0
.end method


# virtual methods
.method public toOld()I
    .locals 2

    .line 34
    sget-object v0, Landroid/icu/impl/number/Padder$1;->$SwitchMap$android$icu$impl$number$Padder$PadPosition:[I

    invoke-virtual {p0}, Landroid/icu/impl/number/Padder$PadPosition;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
