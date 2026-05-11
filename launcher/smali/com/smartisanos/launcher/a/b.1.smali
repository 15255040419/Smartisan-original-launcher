.class Lcom/smartisanos/launcher/a/b;
.super Ljava/lang/Object;
.source "ChangeThemeByFourFingerSlide.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/a/c;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/b;->this$0:Lcom/smartisanos/launcher/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/J;->b(ZLjava/lang/String;)V

    return-void
.end method
