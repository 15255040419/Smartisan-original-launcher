.class public final synthetic Lcom/smartisanos/securitycenter/d/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/d/p;

.field private final synthetic dA:I

.field private final synthetic eA:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/d/p;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/e;->Zz:Lcom/smartisanos/securitycenter/d/p;

    iput p2, p0, Lcom/smartisanos/securitycenter/d/e;->dA:I

    iput-object p3, p0, Lcom/smartisanos/securitycenter/d/e;->eA:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/e;->Zz:Lcom/smartisanos/securitycenter/d/p;

    iget v1, p0, Lcom/smartisanos/securitycenter/d/e;->dA:I

    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/e;->eA:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/securitycenter/d/p;->a(ILjava/lang/CharSequence;)V

    return-void
.end method
