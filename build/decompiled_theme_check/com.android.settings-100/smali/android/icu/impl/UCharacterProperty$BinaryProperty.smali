.class Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinaryProperty"
.end annotation


# instance fields
.field column:I

.field mask:I

.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .locals 0

    .line 197
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    const/4 p1, 0x0

    .line 199
    iput p1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/UCharacterProperty;II)V
    .locals 0

    .line 193
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    .line 195
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 2

    .line 206
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result p1

    iget p0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final getSource()I
    .locals 1

    .line 202
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    if-nez v0, :cond_0

    iget p0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method
