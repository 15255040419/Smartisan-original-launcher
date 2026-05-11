.class public final synthetic Lcom/smartisanos/securitycenter/d/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/d/s;


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/d/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/b;->Zz:Lcom/smartisanos/securitycenter/d/s;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/b;->Zz:Lcom/smartisanos/securitycenter/d/s;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->pj()V

    return-void
.end method
