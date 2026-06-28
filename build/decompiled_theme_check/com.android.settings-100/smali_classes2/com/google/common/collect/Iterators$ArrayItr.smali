.class final Lcom/google/common/collect/Iterators$ArrayItr;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIndexedListIterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/UnmodifiableListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1035
    new-instance v0, Lcom/google/common/collect/Iterators$ArrayItr;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/common/collect/Iterators$ArrayItr;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lcom/google/common/collect/Iterators$ArrayItr;->EMPTY:Lcom/google/common/collect/UnmodifiableListIterator;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    .line 1041
    invoke-direct {p0, p3, p4}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 1042
    iput-object p1, p0, Lcom/google/common/collect/Iterators$ArrayItr;->array:[Ljava/lang/Object;

    .line 1043
    iput p2, p0, Lcom/google/common/collect/Iterators$ArrayItr;->offset:I

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ArrayItr;->array:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/Iterators$ArrayItr;->offset:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method
