.class Lcom/smartisanos/launcher/a/c;
.super Ljava/lang/Object;
.source "ChangeThemeByFourFingerSlide.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/a/h;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "showDialogTask return by isActivityReady false"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget v0, Lcom/smartisanos/launcher/ob;->theme_changing:I

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/J;->b(ZLjava/lang/String;)V

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/a/b;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/a/b;-><init>(Lcom/smartisanos/launcher/a/c;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
