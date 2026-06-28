.class public abstract Landroid/icu/util/StringTrieBuilder;
.super Ljava/lang/Object;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/StringTrieBuilder$State;,
        Landroid/icu/util/StringTrieBuilder$BranchHeadNode;,
        Landroid/icu/util/StringTrieBuilder$SplitBranchNode;,
        Landroid/icu/util/StringTrieBuilder$ListBranchNode;,
        Landroid/icu/util/StringTrieBuilder$BranchNode;,
        Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;,
        Landroid/icu/util/StringTrieBuilder$LinearMatchNode;,
        Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;,
        Landroid/icu/util/StringTrieBuilder$ValueNode;,
        Landroid/icu/util/StringTrieBuilder$Node;,
        Landroid/icu/util/StringTrieBuilder$Option;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

.field private nodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            ">;"
        }
    .end annotation
.end field

.field private root:Landroid/icu/util/StringTrieBuilder$Node;

.field private state:Landroid/icu/util/StringTrieBuilder$State;

.field protected strings:Ljava/lang/StringBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    .line 889
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    .line 890
    new-instance v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-direct {v0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    return-void
.end method

.method static synthetic access$100(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/StringTrieBuilder;->createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder;->registerNode(Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p0

    return-object p0
.end method

.method private createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .locals 3

    .line 808
    invoke-direct {p0, p3}, Landroid/icu/util/StringTrieBuilder;->registerFinalValue(I)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object p3

    .line 809
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 810
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 811
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 812
    new-instance v1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object p0, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-direct {v1, p0, v0, p1, p3}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    move-object p3, v1

    :cond_0
    return-object p3
.end method

.method private final registerFinalValue(I)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .locals 2

    .line 165
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-static {v0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->access$000(Landroid/icu/util/StringTrieBuilder$ValueNode;I)V

    .line 166
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/StringTrieBuilder$Node;

    if-eqz v0, :cond_0

    .line 168
    check-cast v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    return-object v0

    .line 170
    :cond_0
    new-instance v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-direct {v0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>(I)V

    .line 173
    iget-object p0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/StringTrieBuilder$Node;

    return-object v0
.end method

.method private final registerNode(Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 2

    .line 140
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/StringTrieBuilder$Node;

    if-eqz v0, :cond_1

    return-object v0

    .line 150
    :cond_1
    iget-object p0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/StringTrieBuilder$Node;

    return-object p1
.end method


# virtual methods
.method protected addImpl(Ljava/lang/CharSequence;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    if-ne v0, v1, :cond_2

    .line 64
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0, p1, v1, p2}, Landroid/icu/util/StringTrieBuilder;->createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "The maximum string length is 0xffff."

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add (string, value) pairs after build()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    sget-object v0, Landroid/icu/util/StringTrieBuilder$1;->$SwitchMap$android$icu$util$StringTrieBuilder$State:[I

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 104
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Builder failed and must be clear()ed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_2
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    if-eqz v0, :cond_4

    .line 86
    sget-object v0, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    if-ne p1, v0, :cond_3

    .line 87
    sget-object p1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    goto :goto_0

    .line 98
    :cond_3
    sget-object p1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    .line 114
    :goto_0
    iget-object p1, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {p1, p0}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    .line 115
    iget-object p1, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    .line 116
    iget-object p1, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {p1, p0}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 117
    sget-object p1, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    return-void

    .line 84
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "No (string, value) pairs were added."

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected clearImpl()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 127
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    .line 129
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    return-void
.end method

.method protected abstract getMaxBranchLinearSubNodeLength()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getMaxLinearMatchLength()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getMinLinearMatch()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract matchNodesCanHaveValues()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract write(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract write(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract writeDeltaTo(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract writeValueAndFinal(IZ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract writeValueAndType(ZII)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
