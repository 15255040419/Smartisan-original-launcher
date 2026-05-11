.class public final synthetic Lcom/smartisanos/securitycenter/a/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/a/g;


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/a/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/a/a;->Zz:Lcom/smartisanos/securitycenter/a/g;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/a;->Zz:Lcom/smartisanos/securitycenter/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/g;->lj()V

    return-void
.end method
