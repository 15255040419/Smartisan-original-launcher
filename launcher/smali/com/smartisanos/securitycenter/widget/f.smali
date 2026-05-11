.class public final synthetic Lcom/smartisanos/securitycenter/widget/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/widget/SecurityControlView;


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/f;->Zz:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/f;->Zz:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->R(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    return-void
.end method
