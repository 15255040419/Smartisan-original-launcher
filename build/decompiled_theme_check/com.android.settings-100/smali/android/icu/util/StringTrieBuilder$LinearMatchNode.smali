.class final Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
.super Landroid/icu/util/StringTrieBuilder$ValueNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinearMatchNode"
.end annotation


# instance fields
.field private hash:I

.field private length:I

.field private next:Landroid/icu/util/StringTrieBuilder$Node;

.field private stringOffset:I

.field private strings:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 0

    .line 352
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 353
    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    .line 354
    iput p2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    .line 355
    iput p3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 356
    iput-object p4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    return-void
.end method

.method private setHashCode()V
    .locals 4

    .line 488
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    const v1, 0x766665f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    .line 489
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-eqz v0, :cond_0

    .line 490
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    .line 492
    :cond_0
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v1, v0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 493
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    mul-int/lit8 v2, v2, 0x25

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 10

    .line 381
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 382
    iget-boolean p1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-nez p1, :cond_0

    .line 385
    invoke-virtual {p0, p4}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setValue(I)V

    return-object p0

    .line 383
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duplicate string."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 389
    :cond_1
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v1, v0

    :goto_0
    if-ge v0, v1, :cond_8

    .line 391
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne p3, v2, :cond_2

    .line 393
    iget p1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    sub-int p1, v0, p1

    .line 394
    new-instance p2, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object p3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-direct {p2, p3, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    .line 395
    invoke-virtual {p2, p4}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setValue(I)V

    .line 396
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 397
    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    return-object p0

    .line 400
    :cond_2
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 401
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_7

    .line 404
    new-instance v4, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;

    invoke-direct {v4}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;-><init>()V

    .line 407
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    if-ne v0, v5, :cond_5

    .line 409
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-eqz v0, :cond_3

    .line 411
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    invoke-virtual {v4, v0}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->setValue(I)V

    const/4 v0, 0x0

    .line 412
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    .line 413
    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    .line 415
    :cond_3
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    .line 416
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 417
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    :goto_1
    move-object v0, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6

    .line 422
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 423
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 424
    iput-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    move-object v9, v0

    move-object v0, p0

    move-object p0, v9

    goto :goto_2

    :cond_6
    sub-int v1, v0, v5

    add-int/lit8 v0, v0, 0x1

    .line 430
    new-instance v5, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object v6, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iget v7, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v8, v1, 0x1

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-direct {v5, v6, v0, v7, v8}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    .line 432
    iput v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 433
    iput-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    move-object v0, p0

    move-object p0, v5

    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 436
    invoke-static {p1, p2, p3, p4}, Landroid/icu/util/StringTrieBuilder;->access$100(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object p1

    .line 437
    invoke-virtual {v4, v2, p0}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->add(CLandroid/icu/util/StringTrieBuilder$Node;)V

    .line 438
    invoke-virtual {v4, v3, p1}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->add(CLandroid/icu/util/StringTrieBuilder$Node;)V

    return-object v0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 443
    :cond_8
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 365
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 368
    :cond_1
    check-cast p1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    .line 369
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    iget v3, p1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v4, p1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 372
    :cond_2
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget p1, p1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    add-int/2addr v1, v3

    :goto_0
    if-ge v3, v1, :cond_4

    .line 373
    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method public hashCode()I
    .locals 0

    .line 359
    iget p0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    return p0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1

    .line 474
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->offset:I

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->offset:I

    :cond_0
    return p1
.end method

.method public register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 5

    .line 448
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 450
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMaxLinearMatchLength()I

    move-result v0

    .line 451
    :goto_0
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-le v1, v0, :cond_0

    .line 452
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    sub-int/2addr v1, v0

    .line 453
    iput v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 454
    new-instance v1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-direct {v1, v3, v2, v0, v4}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    .line 456
    invoke-direct {v1}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    .line 457
    invoke-static {p1, v1}, Landroid/icu/util/StringTrieBuilder;->access$200(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    goto :goto_0

    .line 460
    :cond_0
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->matchNodesCanHaveValues()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    const/4 v1, 0x0

    .line 462
    iput v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    .line 463
    iput-boolean v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    .line 464
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    .line 465
    new-instance v1, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    invoke-static {p1, p0}, Landroid/icu/util/StringTrieBuilder;->access$200(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    move-object p0, v1

    goto :goto_1

    .line 467
    :cond_1
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    .line 470
    :goto_1
    invoke-static {p1, p0}, Landroid/icu/util/StringTrieBuilder;->access$200(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p0

    return-object p0
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 4

    .line 481
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 482
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->write(II)I

    .line 483
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMinLinearMatch()I

    move-result v2

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->offset:I

    return-void
.end method
