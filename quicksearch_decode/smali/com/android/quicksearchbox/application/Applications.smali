.class public Lcom/android/quicksearchbox/application/Applications;
.super Ljava/lang/Object;
.source "Applications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/application/Applications$ApplicationColumns;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://applications"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/application/Applications;->a:Landroid/net/Uri;

    return-void
.end method
