.class public final synthetic Lcom/smartisanos/securitycenter/d/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/d/l;

.field private final synthetic dA:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/d/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/c;->Zz:Lcom/smartisanos/securitycenter/d/l;

    iput-object p2, p0, Lcom/smartisanos/securitycenter/d/c;->dA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/c;->Zz:Lcom/smartisanos/securitycenter/d/l;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/c;->dA:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/smartisanos/securitycenter/d/l;->Aa(Ljava/lang/String;)V

    return-void
.end method
