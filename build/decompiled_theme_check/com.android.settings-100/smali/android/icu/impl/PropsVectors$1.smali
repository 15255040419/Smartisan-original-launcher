.class Landroid/icu/impl/PropsVectors$1;
.super Ljava/lang/Object;
.source "PropsVectors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/PropsVectors;->compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/PropsVectors;


# direct methods
.method constructor <init>(Landroid/icu/impl/PropsVectors;)V
    .locals 0

    .line 386
    iput-object p1, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 7

    .line 389
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 390
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 391
    iget-object v0, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v0}, Landroid/icu/impl/PropsVectors;->access$000(Landroid/icu/impl/PropsVectors;)I

    move-result v0

    const/4 v1, 0x2

    .line 397
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v2}, Landroid/icu/impl/PropsVectors;->access$100(Landroid/icu/impl/PropsVectors;)[I

    move-result-object v2

    add-int v3, p1, v1

    aget v2, v2, v3

    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->access$100(Landroid/icu/impl/PropsVectors;)[I

    move-result-object v4

    add-int v5, p2, v1

    aget v4, v4, v5

    const/4 v6, -0x1

    if-eq v2, v4, :cond_2

    .line 398
    iget-object p1, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {p1}, Landroid/icu/impl/PropsVectors;->access$100(Landroid/icu/impl/PropsVectors;)[I

    move-result-object p1

    aget p1, p1, v3

    iget-object p0, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {p0}, Landroid/icu/impl/PropsVectors;->access$100(Landroid/icu/impl/PropsVectors;)[I

    move-result-object p0

    aget p0, p0, v5

    if-ge p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 401
    iget-object v2, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v2}, Landroid/icu/impl/PropsVectors;->access$000(Landroid/icu/impl/PropsVectors;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    move v1, v3

    :cond_3
    add-int/2addr v0, v6

    if-gtz v0, :cond_0

    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 386
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/PropsVectors$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method
