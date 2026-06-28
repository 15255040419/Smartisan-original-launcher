.class public Landroid/icu/text/AlphabeticIndex$Bucket;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/text/AlphabeticIndex$Record<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;"
        }
    .end annotation
.end field

.field private displayIndex:I

.field private final label:Ljava/lang/String;

.field private final labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field private final lowerBoundary:Ljava/lang/String;

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;)V
    .locals 0

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    .line 906
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    .line 907
    iput-object p3, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$1;)V
    .locals 0

    .line 866
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;
    .locals 0

    .line 866
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Landroid/icu/text/AlphabeticIndex$Bucket;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 866
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 0

    .line 866
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object p0
.end method

.method static synthetic access$1400(Landroid/icu/text/AlphabeticIndex$Bucket;)I
    .locals 0

    .line 866
    iget p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayIndex:I

    return p0
.end method

.method static synthetic access$1402(Landroid/icu/text/AlphabeticIndex$Bucket;I)I
    .locals 0

    .line 866
    iput p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayIndex:I

    return p1
.end method

.method static synthetic access$800(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;
    .locals 0

    .line 866
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;
    .locals 0

    .line 866
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;

    return-object p0
.end method

.method static synthetic access$902(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;
    .locals 0

    .line 866
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;

    return-object p1
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 916
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getLabelType()Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 0

    .line 925
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation

    .line 942
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    if-nez p0, :cond_0

    .line 943
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 945
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 934
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{labelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lowerBoundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
