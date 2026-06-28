.class Landroid/icu/text/TransliteratorRegistry$ResourceEntry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceEntry"
.end annotation


# instance fields
.field public direction:I

.field public resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    .line 228
    iput p2, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->direction:I

    return-void
.end method
