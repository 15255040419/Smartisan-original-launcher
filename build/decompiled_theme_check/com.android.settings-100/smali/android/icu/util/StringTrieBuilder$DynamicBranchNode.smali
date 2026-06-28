.class final Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;
.super Landroid/icu/util/StringTrieBuilder$ValueNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DynamicBranchNode"
.end annotation


# instance fields
.field private chars:Ljava/lang/StringBuilder;

.field private equal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 505
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    return-void
.end method

.method private find(C)I
    .locals 4

    .line 573
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v2, v1, v0

    .line 575
    div-int/lit8 v2, v2, 0x2

    .line 576
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ge p1, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 5

    sub-int v0, p3, p2

    .line 548
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMaxBranchLinearSubNodeLength()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 550
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 551
    new-instance v1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 554
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p2

    .line 555
    invoke-direct {p0, p1, v0, p3}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p0

    invoke-direct {v1, v2, p2, p0}, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;-><init>(CLandroid/icu/util/StringTrieBuilder$Node;Landroid/icu/util/StringTrieBuilder$Node;)V

    .line 551
    invoke-static {p1, v1}, Landroid/icu/util/StringTrieBuilder;->access$200(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p0

    return-object p0

    .line 557
    :cond_0
    new-instance v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;

    invoke-direct {v1, v0}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;-><init>(I)V

    .line 559
    :cond_1
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 560
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/StringTrieBuilder$Node;

    .line 561
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/icu/util/StringTrieBuilder$ValueNode;

    if-ne v3, v4, :cond_2

    .line 563
    check-cast v2, Landroid/icu/util/StringTrieBuilder$ValueNode;

    iget v2, v2, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {v1, v0, v2}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->add(II)V

    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {v2, p1}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->add(ILandroid/icu/util/StringTrieBuilder$Node;)V

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_1

    .line 568
    invoke-static {p1, v1}, Landroid/icu/util/StringTrieBuilder;->access$200(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 3

    .line 514
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 515
    iget-boolean p1, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->hasValue:Z

    if-nez p1, :cond_0

    .line 518
    invoke-virtual {p0, p4}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->setValue(I)V

    return-object p0

    .line 516
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duplicate string."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    .line 522
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    .line 523
    invoke-direct {p0, p3}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->find(C)I

    move-result v1

    .line 524
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne p3, v2, :cond_2

    .line 525
    iget-object p3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v2, p1, p2, v0, p4}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 527
    :cond_2
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, p3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 528
    iget-object p3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-static {p1, p2, v0, p4}, Landroid/icu/util/StringTrieBuilder;->access$100(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public add(CLandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 2

    .line 508
    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->find(C)I

    move-result v0

    .line 509
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 510
    iget-object p0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 3

    .line 534
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    .line 535
    new-instance v1, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, v2, v0}, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    .line 537
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->hasValue:Z

    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->matchNodesCanHaveValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget p0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->value:I

    invoke-virtual {v1, p0}, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->setValue(I)V

    goto :goto_0

    .line 541
    :cond_0
    new-instance v0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    iget p0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->value:I

    invoke-static {p1, v1}, Landroid/icu/util/StringTrieBuilder;->access$200(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    .line 544
    :goto_1
    invoke-static {p1, v0}, Landroid/icu/util/StringTrieBuilder;->access$200(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p0

    return-object p0
.end method
