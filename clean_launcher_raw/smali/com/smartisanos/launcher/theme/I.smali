.class Lcom/smartisanos/launcher/theme/I;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/theme/L;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/L;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/I;->this$1:Lcom/smartisanos/launcher/theme/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget p0, Lcom/smartisanos/launcher/ob;->can_not_download_theme_by_net:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    return-void
.end method
