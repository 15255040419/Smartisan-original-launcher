.class Lcom/smartisanos/launcher/a/e;
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
    .locals 2

    .line 1
    sget p0, Lcom/smartisanos/launcher/ob;->theme_changing:I

    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/launcher/J;->b(ZLjava/lang/String;)V

    return-void
.end method
