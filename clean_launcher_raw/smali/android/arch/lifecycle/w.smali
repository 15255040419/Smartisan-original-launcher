.class public Landroid/arch/lifecycle/w;
.super Ljava/lang/Object;
.source "MethodCallsLogger.java"


# instance fields
.field private la:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/w;->la:Ljava/util/Map;

    return-void
.end method
