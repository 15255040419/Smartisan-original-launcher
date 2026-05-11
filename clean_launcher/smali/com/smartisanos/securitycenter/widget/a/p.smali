.class public final synthetic Lcom/smartisanos/securitycenter/widget/a/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/widget/a/x;

.field private final synthetic dA:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/widget/a/x;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/p;->Zz:Lcom/smartisanos/securitycenter/widget/a/x;

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/a/p;->dA:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/p;->Zz:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/p;->dA:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/smartisanos/securitycenter/widget/a/x;->i(Ljava/lang/Runnable;)V

    return-void
.end method
