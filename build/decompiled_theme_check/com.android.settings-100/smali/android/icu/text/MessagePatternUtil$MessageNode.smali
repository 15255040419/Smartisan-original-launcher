.class public Landroid/icu/text/MessagePatternUtil$MessageNode;
.super Landroid/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageNode"
.end annotation


# instance fields
.field private volatile list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/MessagePatternUtil$MessageContentsNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil$1;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePatternUtil$1;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$MessageNode;-><init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$MessageNode;->addContentsNode(Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    return-void
.end method

.method static synthetic access$700(Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 0

    .line 78
    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$MessageNode;->freeze()Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p0

    return-object p0
.end method

.method private addContentsNode(Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .locals 2

    .line 97
    instance-of v0, p1, Landroid/icu/text/MessagePatternUtil$TextNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    .line 100
    instance-of v1, v0, Landroid/icu/text/MessagePatternUtil$TextNode;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Landroid/icu/text/MessagePatternUtil$TextNode;

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil$TextNode;->access$100(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Landroid/icu/text/MessagePatternUtil$TextNode;

    invoke-static {p1}, Landroid/icu/text/MessagePatternUtil$TextNode;->access$100(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/icu/text/MessagePatternUtil$TextNode;->access$102(Landroid/icu/text/MessagePatternUtil$TextNode;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 106
    :cond_0
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private freeze()Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getContents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/text/MessagePatternUtil$MessageContentsNode;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
