.class public final synthetic Lcom/smartisanos/securitycenter/d/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/b/h;


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/b/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/k;->Zz:Lcom/smartisanos/securitycenter/b/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/k;->Zz:Lcom/smartisanos/securitycenter/b/h;

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/b/h;->j()V

    return-void
.end method
