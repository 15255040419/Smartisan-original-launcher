.class Lcom/smartisanos/securitycenter/widget/z;
.super Landroid/database/ContentObserver;
.source "SecurityControlView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/z;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/z;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->V()V

    return-void
.end method
