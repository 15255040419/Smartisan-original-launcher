.class final Lcom/google/common/base/Joiner$3;
.super Ljava/util/AbstractList;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Joiner;->iterable(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$first:Ljava/lang/Object;

.field final synthetic val$rest:[Ljava/lang/Object;

.field final synthetic val$second:Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/google/common/base/Joiner$3;->val$rest:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/base/Joiner$3;->val$first:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/base/Joiner$3;->val$second:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 477
    iget-object p0, p0, Lcom/google/common/base/Joiner$3;->val$rest:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x2

    aget-object p0, p0, p1

    return-object p0

    .line 475
    :cond_0
    iget-object p0, p0, Lcom/google/common/base/Joiner$3;->val$second:Ljava/lang/Object;

    return-object p0

    .line 473
    :cond_1
    iget-object p0, p0, Lcom/google/common/base/Joiner$3;->val$first:Ljava/lang/Object;

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/google/common/base/Joiner$3;->val$rest:[Ljava/lang/Object;

    array-length p0, p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method
