.class public Lb/a/a/n1/j;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.smartisanos.gloable.searchconfig.provider"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lb/a/a/n1/j;->a:Landroid/net/Uri;

    return-void
.end method
