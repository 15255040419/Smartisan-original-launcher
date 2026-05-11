.class public final synthetic Lcom/smartisanos/securitycenter/widget/a/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/widget/a/u;

.field private final synthetic dA:J


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/widget/a/u;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/d;->Zz:Lcom/smartisanos/securitycenter/widget/a/u;

    iput-wide p2, p0, Lcom/smartisanos/securitycenter/widget/a/d;->dA:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/d;->Zz:Lcom/smartisanos/securitycenter/widget/a/u;

    iget-wide v1, p0, Lcom/smartisanos/securitycenter/widget/a/d;->dA:J

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/securitycenter/widget/a/u;->e(J)V

    return-void
.end method
