.class public Landroid/icu/impl/TextTrieMap$ParseState;
.super Ljava/lang/Object;
.source "TextTrieMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParseState"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private node:Landroid/icu/impl/TextTrieMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node;"
        }
    .end annotation
.end field

.field private offset:I

.field private result:Landroid/icu/impl/TextTrieMap$Node$StepResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node.StepResult;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/icu/impl/TextTrieMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    const-class v0, Landroid/icu/impl/TextTrieMap;

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/TextTrieMap;Landroid/icu/impl/TextTrieMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node;)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$ParseState;->this$0:Landroid/icu/impl/TextTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Landroid/icu/impl/TextTrieMap$ParseState;->node:Landroid/icu/impl/TextTrieMap$Node;

    const/4 p1, 0x0

    .line 143
    iput p1, p0, Landroid/icu/impl/TextTrieMap$ParseState;->offset:I

    .line 144
    new-instance p1, Landroid/icu/impl/TextTrieMap$Node$StepResult;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p1, p2}, Landroid/icu/impl/TextTrieMap$Node$StepResult;-><init>(Landroid/icu/impl/TextTrieMap$Node;)V

    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$ParseState;->result:Landroid/icu/impl/TextTrieMap$Node$StepResult;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 5

    .line 154
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$ParseState;->this$0:Landroid/icu/impl/TextTrieMap;

    iget-boolean v0, v0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p1

    .line 157
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    int-to-char v1, p1

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    .line 159
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$ParseState;->node:Landroid/icu/impl/TextTrieMap$Node;

    iget v3, p0, Landroid/icu/impl/TextTrieMap$ParseState;->offset:I

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$ParseState;->result:Landroid/icu/impl/TextTrieMap$Node$StepResult;

    invoke-virtual {v2, v1, v3, v4}, Landroid/icu/impl/TextTrieMap$Node;->takeStep(CILandroid/icu/impl/TextTrieMap$Node$StepResult;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$ParseState;->result:Landroid/icu/impl/TextTrieMap$Node$StepResult;

    iget-object v0, v0, Landroid/icu/impl/TextTrieMap$Node$StepResult;->node:Landroid/icu/impl/TextTrieMap$Node;

    if-eqz v0, :cond_2

    .line 161
    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result p1

    .line 162
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$ParseState;->result:Landroid/icu/impl/TextTrieMap$Node$StepResult;

    iget-object v0, v0, Landroid/icu/impl/TextTrieMap$Node$StepResult;->node:Landroid/icu/impl/TextTrieMap$Node;

    iget-object v1, p0, Landroid/icu/impl/TextTrieMap$ParseState;->result:Landroid/icu/impl/TextTrieMap$Node$StepResult;

    iget v1, v1, Landroid/icu/impl/TextTrieMap$Node$StepResult;->offset:I

    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$ParseState;->result:Landroid/icu/impl/TextTrieMap$Node$StepResult;

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/impl/TextTrieMap$Node;->takeStep(CILandroid/icu/impl/TextTrieMap$Node$StepResult;)V

    .line 164
    :cond_2
    iget-object p1, p0, Landroid/icu/impl/TextTrieMap$ParseState;->result:Landroid/icu/impl/TextTrieMap$Node$StepResult;

    iget-object p1, p1, Landroid/icu/impl/TextTrieMap$Node$StepResult;->node:Landroid/icu/impl/TextTrieMap$Node;

    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$ParseState;->node:Landroid/icu/impl/TextTrieMap$Node;

    .line 165
    iget-object p1, p0, Landroid/icu/impl/TextTrieMap$ParseState;->result:Landroid/icu/impl/TextTrieMap$Node$StepResult;

    iget p1, p1, Landroid/icu/impl/TextTrieMap$Node$StepResult;->offset:I

    iput p1, p0, Landroid/icu/impl/TextTrieMap$ParseState;->offset:I

    return-void
.end method

.method public atEnd()Z
    .locals 2

    .line 186
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$ParseState;->node:Landroid/icu/impl/TextTrieMap$Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/icu/impl/TextTrieMap$Node;->charCount()I

    move-result v0

    iget v1, p0, Landroid/icu/impl/TextTrieMap$ParseState;->offset:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/icu/impl/TextTrieMap$ParseState;->node:Landroid/icu/impl/TextTrieMap$Node;

    invoke-static {p0}, Landroid/icu/impl/TextTrieMap$Node;->access$200(Landroid/icu/impl/TextTrieMap$Node;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getCurrentMatches()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$ParseState;->node:Landroid/icu/impl/TextTrieMap$Node;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/icu/impl/TextTrieMap$ParseState;->offset:I

    invoke-virtual {v0}, Landroid/icu/impl/TextTrieMap$Node;->charCount()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 175
    iget-object p0, p0, Landroid/icu/impl/TextTrieMap$ParseState;->node:Landroid/icu/impl/TextTrieMap$Node;

    invoke-virtual {p0}, Landroid/icu/impl/TextTrieMap$Node;->values()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
