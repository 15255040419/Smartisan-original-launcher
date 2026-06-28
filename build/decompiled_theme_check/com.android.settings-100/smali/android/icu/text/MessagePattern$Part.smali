.class public final Landroid/icu/text/MessagePattern$Part;
.super Ljava/lang/Object;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePattern$Part$Type;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0xffff

.field private static final MAX_VALUE:I = 0x7fff


# instance fields
.field private final index:I

.field private final length:C

.field private limitPartIndex:I

.field private final type:Landroid/icu/text/MessagePattern$Part$Type;

.field private value:S


# direct methods
.method private constructor <init>(Landroid/icu/text/MessagePattern$Part$Type;III)V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    .line 523
    iput p2, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    int-to-char p1, p3

    .line 524
    iput-char p1, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    int-to-short p1, p4

    .line 525
    iput-short p1, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePattern$Part$Type;IIILandroid/icu/text/MessagePattern$1;)V
    .locals 0

    .line 520
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/MessagePattern$Part;-><init>(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return-void
.end method

.method static synthetic access$000(Landroid/icu/text/MessagePattern$Part;)I
    .locals 0

    .line 520
    iget p0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    return p0
.end method

.method static synthetic access$100(Landroid/icu/text/MessagePattern$Part;)S
    .locals 0

    .line 520
    iget-short p0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return p0
.end method

.method static synthetic access$102(Landroid/icu/text/MessagePattern$Part;S)S
    .locals 0

    .line 520
    iput-short p1, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return p1
.end method

.method static synthetic access$200(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;
    .locals 0

    .line 520
    iget-object p0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    return-object p0
.end method

.method static synthetic access$300(Landroid/icu/text/MessagePattern$Part;)C
    .locals 0

    .line 520
    iget-char p0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    return p0
.end method

.method static synthetic access$400(Landroid/icu/text/MessagePattern$Part;)I
    .locals 0

    .line 520
    iget p0, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    return p0
.end method

.method static synthetic access$402(Landroid/icu/text/MessagePattern$Part;I)I
    .locals 0

    .line 520
    iput p1, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 709
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 712
    :cond_1
    check-cast p1, Landroid/icu/text/MessagePattern$Part;

    .line 713
    iget-object v2, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    iget-object v3, p1, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    .line 714
    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern$Part$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    iget v3, p1, Landroid/icu/text/MessagePattern$Part;->index:I

    if-ne v2, v3, :cond_2

    iget-char v2, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    iget-char v3, p1, Landroid/icu/text/MessagePattern$Part;->length:C

    if-ne v2, v3, :cond_2

    iget-short v2, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    iget-short v3, p1, Landroid/icu/text/MessagePattern$Part;->value:S

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    iget p1, p1, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .locals 2

    .line 577
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 578
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    sget-object p0, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    return-object p0

    .line 579
    :cond_1
    :goto_0
    invoke-static {}, Landroid/icu/text/MessagePattern;->access$500()[Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    iget-short p0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 541
    iget p0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    return p0
.end method

.method public getLength()I
    .locals 0

    .line 550
    iget-char p0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    return p0
.end method

.method public getLimit()I
    .locals 1

    .line 559
    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    iget-char p0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    add-int/2addr v0, p0

    return v0
.end method

.method public getType()Landroid/icu/text/MessagePattern$Part$Type;
    .locals 0

    .line 533
    iget-object p0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 568
    iget-short p0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 726
    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part$Type;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-char v1, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-short p0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 695
    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    iget-short v0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$ArgType;->name()Ljava/lang/String;

    move-result-object v0

    .line 697
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
