.class Lcom/smartisanos/launcher/a/b/h;
.super Lcom/smartisanos/smengine/n;
.source "HandleIconSort.java"


# instance fields
.field final synthetic BD:I

.field final synthetic this$0:Lcom/smartisanos/launcher/a/b/i;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/b/i;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    iput p3, p0, Lcom/smartisanos/launcher/a/b/h;->BD:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    iget v1, p0, Lcom/smartisanos/launcher/a/b/h;->BD:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/a/b/i;->a(Lcom/smartisanos/launcher/a/b/i;I)I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/b/i;->a(Lcom/smartisanos/launcher/a/b/i;)I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    invoke-static {v1}, Lcom/smartisanos/launcher/a/b/i;->b(Lcom/smartisanos/launcher/a/b/i;)I

    move-result v1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    invoke-static {p0}, Lcom/smartisanos/launcher/a/b/i;->a(Lcom/smartisanos/launcher/a/b/i;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/a/b/i;->b(Lcom/smartisanos/launcher/a/b/i;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/b/i;->c(Lcom/smartisanos/launcher/a/b/i;)Lcom/smartisanos/launcher/a/b/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "clean sortResult"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/b/i;->c(Lcom/smartisanos/launcher/a/b/i;)Lcom/smartisanos/launcher/a/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/a/b/j;->clear()V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/a/b/i;->a(Lcom/smartisanos/launcher/a/b/i;Lcom/smartisanos/launcher/a/b/j;)Lcom/smartisanos/launcher/a/b/j;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/b/i;->d(Lcom/smartisanos/launcher/a/b/i;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/b/i;->e(Lcom/smartisanos/launcher/a/b/i;)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/h;->this$0:Lcom/smartisanos/launcher/a/b/i;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/a/b/i;->ba(I)Z

    :goto_0
    return-void
.end method
