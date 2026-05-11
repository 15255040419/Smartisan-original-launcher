.class Lcom/smartisanos/launcher/view/oc;
.super Lcom/smartisanos/smengine/a;
.source "PageTitleView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/tc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/tc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/oc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/oc;->this$0:Lcom/smartisanos/launcher/view/tc;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/tc;->c(Lcom/smartisanos/launcher/view/tc;Z)Z

    return-void
.end method
