.class Landroid/icu/impl/ICUData$1;
.super Ljava/lang/Object;
.source "ICUData.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUData;->exists(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Landroid/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0}, Landroid/icu/impl/ICUData$1;->run()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/net/URL;
    .locals 1

    .line 100
    const-class v0, Landroid/icu/impl/ICUData;

    iget-object p0, p0, Landroid/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method
