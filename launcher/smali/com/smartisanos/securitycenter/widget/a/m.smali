.class public final synthetic Lcom/smartisanos/securitycenter/widget/a/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/widget/a/w;

.field private final synthetic dA:I


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/widget/a/w;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/m;->Zz:Lcom/smartisanos/securitycenter/widget/a/w;

    iput p2, p0, Lcom/smartisanos/securitycenter/widget/a/m;->dA:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/m;->Zz:Lcom/smartisanos/securitycenter/widget/a/w;

    iget p0, p0, Lcom/smartisanos/securitycenter/widget/a/m;->dA:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/securitycenter/widget/a/w;->t(I)V

    return-void
.end method
