.class Lcom/smartisanos/launcher/widget/d;
.super Ljava/lang/Object;
.source "StatusIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/widget/StatusIconView;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/widget/StatusIconView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/widget/d;->this$0:Lcom/smartisanos/launcher/widget/StatusIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/widget/d;->this$0:Lcom/smartisanos/launcher/widget/StatusIconView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
