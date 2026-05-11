.class public final synthetic Lcom/smartisanos/securitycenter/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Zz:Lcom/smartisanos/securitycenter/PrivacySecurity;


# direct methods
.method public synthetic constructor <init>(Lcom/smartisanos/securitycenter/PrivacySecurity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/b;->Zz:Lcom/smartisanos/securitycenter/PrivacySecurity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/b;->Zz:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->bind()V

    return-void
.end method
