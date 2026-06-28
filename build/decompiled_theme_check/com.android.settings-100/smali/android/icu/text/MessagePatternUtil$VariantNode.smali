.class public Landroid/icu/text/MessagePatternUtil$VariantNode;
.super Landroid/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariantNode"
.end annotation


# instance fields
.field private msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

.field private numericValue:D

.field private selector:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 416
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil$1;)V

    const-wide v0, -0x3e6290cbac000000L    # -1.23456789E8

    .line 420
    iput-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePatternUtil$1;)V
    .locals 0

    .line 373
    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>()V

    return-void
.end method

.method static synthetic access$1702(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 373
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Landroid/icu/text/MessagePatternUtil$VariantNode;D)D
    .locals 0

    .line 373
    iput-wide p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    return-wide p1
.end method

.method static synthetic access$1902(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 0

    .line 373
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    return-object p1
.end method


# virtual methods
.method public getMessage()Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 0

    .line 399
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    return-object p0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 0

    .line 381
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectorValue()D
    .locals 2

    .line 393
    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    return-wide v0
.end method

.method public isSelectorNumeric()Z
    .locals 4

    .line 387
    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    const-wide v2, -0x3e6290cbac000000L    # -1.23456789E8

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    invoke-virtual {p0}, Landroid/icu/text/MessagePatternUtil$VariantNode;->isSelectorNumeric()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    iget-wide v1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 410
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :goto_0
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    invoke-virtual {p0}, Landroid/icu/text/MessagePatternUtil$MessageNode;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
