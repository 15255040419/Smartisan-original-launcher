.class Lcom/smartisanos/securitycenter/a/k;
.super Lcom/smartisanos/securitycenter/c;
.source "PrivacySecurityGlobal.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/a/l;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/securitycenter/d;

    invoke-interface {v1, p1}, Lcom/smartisanos/securitycenter/d;->a(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/securitycenter/d;

    invoke-interface {v1, p1, p2}, Lcom/smartisanos/securitycenter/d;->a(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/securitycenter/d;

    invoke-interface {v1, p1}, Lcom/smartisanos/securitycenter/d;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/securitycenter/d;

    invoke-interface {v1, p1, p2}, Lcom/smartisanos/securitycenter/d;->b(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/securitycenter/d;

    invoke-interface {v1, p1, p2}, Lcom/smartisanos/securitycenter/d;->c(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/securitycenter/d;

    invoke-interface {v1, p1, p2}, Lcom/smartisanos/securitycenter/d;->d(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/securitycenter/d;

    invoke-interface {v1, p1}, Lcom/smartisanos/securitycenter/d;->f(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/securitycenter/d;

    invoke-interface {v1, p1}, Lcom/smartisanos/securitycenter/d;->g(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/k;->this$0:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/a/l;->a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/securitycenter/d;

    invoke-interface {v1, p1}, Lcom/smartisanos/securitycenter/d;->j(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
