.class Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Landroid/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScriptExtensionsFilter"
.end annotation


# instance fields
.field script:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 3144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;->script:I

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 0

    .line 3147
    iget p0, p0, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;->script:I

    invoke-static {p1, p0}, Landroid/icu/lang/UScript;->hasScript(II)Z

    move-result p0

    return p0
.end method
