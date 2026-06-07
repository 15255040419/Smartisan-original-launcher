.class public Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;
.super Ljava/lang/Object;
.source "FullTextAsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Ljava/lang/String;

.field public c:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;->a:Landroid/graphics/Bitmap;

    .line 3
    iput-object p2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;->c:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;

    return-void
.end method
