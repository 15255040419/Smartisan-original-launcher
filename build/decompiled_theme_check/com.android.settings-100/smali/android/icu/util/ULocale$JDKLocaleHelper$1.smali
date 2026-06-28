.class Landroid/icu/util/ULocale$JDKLocaleHelper$1;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fkey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4264
    iput-object p1, p0, Landroid/icu/util/ULocale$JDKLocaleHelper$1;->val$fkey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 4264
    invoke-virtual {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper$1;->run()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/String;
    .locals 0

    .line 4267
    iget-object p0, p0, Landroid/icu/util/ULocale$JDKLocaleHelper$1;->val$fkey:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
