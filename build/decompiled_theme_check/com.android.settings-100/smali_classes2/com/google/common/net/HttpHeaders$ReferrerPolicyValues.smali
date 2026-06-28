.class public final Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/HttpHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReferrerPolicyValues"
.end annotation


# static fields
.field public static final NO_REFERRER:Ljava/lang/String; = "no-referrer"

.field public static final NO_REFFERER_WHEN_DOWNGRADE:Ljava/lang/String; = "no-referrer-when-downgrade"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final ORIGIN_WHEN_CROSS_ORIGIN:Ljava/lang/String; = "origin-when-cross-origin"

.field public static final SAME_ORIGIN:Ljava/lang/String; = "same-origin"

.field public static final STRICT_ORIGIN:Ljava/lang/String; = "strict-origin"

.field public static final STRICT_ORIGIN_WHEN_CROSS_ORIGIN:Ljava/lang/String; = "strict-origin-when-cross-origin"

.field public static final UNSAFE_URL:Ljava/lang/String; = "unsafe-url"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
