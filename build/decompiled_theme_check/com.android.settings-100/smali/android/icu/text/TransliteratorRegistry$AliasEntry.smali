.class Landroid/icu/text/TransliteratorRegistry$AliasEntry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AliasEntry"
.end annotation


# instance fields
.field public alias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;->alias:Ljava/lang/String;

    return-void
.end method
