.class public Lb/a/a/o1/c/b$d;
.super Ljava/lang/Object;
.source "AppImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/o1/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/o1/c/b$d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lb/a/a/o1/c/b$d;->b:Landroid/widget/ImageView;

    return-void
.end method
