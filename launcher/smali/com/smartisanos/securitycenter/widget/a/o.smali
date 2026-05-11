.class public final synthetic Lcom/smartisanos/securitycenter/widget/a/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/widget/a/w;

.field private final synthetic dA:J


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/widget/a/w;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/o;->Zz:Lcom/smartisanos/securitycenter/widget/a/w;

    iput-wide p2, p0, Lcom/smartisanos/securitycenter/widget/a/o;->dA:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/o;->Zz:Lcom/smartisanos/securitycenter/widget/a/w;

    iget-wide v1, p0, Lcom/smartisanos/securitycenter/widget/a/o;->dA:J

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/securitycenter/widget/a/w;->f(J)V

    return-void
.end method
