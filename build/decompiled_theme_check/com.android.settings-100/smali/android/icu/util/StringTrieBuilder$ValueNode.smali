.class Landroid/icu/util/StringTrieBuilder$ValueNode;
.super Landroid/icu/util/StringTrieBuilder$Node;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected hasValue:Z

.field protected value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 262
    const-class v0, Landroid/icu/util/StringTrieBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$Node;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 264
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$Node;-><init>()V

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    .line 266
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    return-void
.end method

.method static synthetic access$000(Landroid/icu/util/StringTrieBuilder$ValueNode;I)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setFinalValue(I)V

    return-void
.end method

.method private setFinalValue(I)V
    .locals 1

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    .line 275
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    return-void
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 1

    .line 298
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 302
    invoke-static {p1, p2, p3, p4}, Landroid/icu/util/StringTrieBuilder;->access$100(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object p1

    .line 303
    iget p0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {p1, p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    return-object p1

    .line 299
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duplicate string."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 290
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 293
    :cond_1
    check-cast p1, Landroid/icu/util/StringTrieBuilder$ValueNode;

    .line 294
    iget-boolean v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    iget-boolean v3, p1, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-ne v1, v3, :cond_2

    if-eqz v1, :cond_3

    iget p0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    iget p1, p1, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 280
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v0, :cond_0

    const v0, 0x2777775

    .line 281
    iget p0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const v0, 0x111111

    :goto_0
    return v0
.end method

.method public final setValue(I)V
    .locals 1

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    .line 271
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    return-void
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 2

    .line 308
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->offset:I

    return-void
.end method
