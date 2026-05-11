.class Lcom/smartisanos/launcher/e/h;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vu:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/e/h;->vu:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/e/h;->vu:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "_light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 4
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/ua;->a(Landroid/view/Window;Z)V

    const/4 p0, 0x2

    .line 5
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->a(B)B

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/ua;->a(Landroid/view/Window;Z)V

    const/4 p0, 0x3

    .line 7
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->a(B)B

    :goto_0
    return-void
.end method
