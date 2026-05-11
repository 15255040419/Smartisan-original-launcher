.class Landroid/support/v4/util/ArraySet$1;
.super Landroid/support/v4/util/MapCollections;
.source "ArraySet.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/util/ArraySet;


# direct methods
.method constructor <init>(Landroid/support/v4/util/ArraySet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-direct {p0}, Landroid/support/v4/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0}, Landroid/support/v4/util/ArraySet;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-static {p0}, Landroid/support/v4/util/ArraySet;->access$100(Landroid/support/v4/util/ArraySet;)[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected colGetSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-static {p0}, Landroid/support/v4/util/ArraySet;->access$000(Landroid/support/v4/util/ArraySet;)I

    move-result p0

    return p0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
