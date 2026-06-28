.class Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
.super Ljava/lang/Object;
.source "RBBITableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBITableBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RBBIStateDescriptor"
.end annotation


# instance fields
.field fAccepting:I

.field fDtran:[I

.field fLookAhead:I

.field fMarked:Z

.field fPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fTagVals:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fTagsIdx:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    add-int/lit8 p1, p1, 0x1

    .line 58
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    return-void
.end method
