.class Lcom/smartisanos/launcher/view/rc;
.super Ljava/lang/Object;
.source "PageTitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/tc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/tc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/rc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lcom/smartisanos/launcher/ob;->change_pwd_title:I

    sget v1, Lcom/smartisanos/launcher/ob;->change_pwd_content:I

    new-instance v2, Lcom/smartisanos/launcher/view/qc;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/qc;-><init>(Lcom/smartisanos/launcher/view/rc;)V

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/a/I;->a(IILjava/lang/Runnable;)V

    return-void
.end method
