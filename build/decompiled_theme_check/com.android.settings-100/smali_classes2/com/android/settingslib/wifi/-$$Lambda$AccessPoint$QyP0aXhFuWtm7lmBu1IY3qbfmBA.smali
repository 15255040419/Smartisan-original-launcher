.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QyP0aXhFuWtm7lmBu1IY3qbfmBA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/AccessPoint;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QyP0aXhFuWtm7lmBu1IY3qbfmBA;->f$0:Lcom/android/settingslib/wifi/AccessPoint;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QyP0aXhFuWtm7lmBu1IY3qbfmBA;->f$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->lambda$update$5$AccessPoint()V

    return-void
.end method
