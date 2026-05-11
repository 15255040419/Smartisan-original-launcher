.class public final synthetic Lcom/smartisanos/securitycenter/a/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/a/l;


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/a/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/a/c;->Zz:Lcom/smartisanos/securitycenter/a/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/c;->Zz:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->nj()V

    return-void
.end method
